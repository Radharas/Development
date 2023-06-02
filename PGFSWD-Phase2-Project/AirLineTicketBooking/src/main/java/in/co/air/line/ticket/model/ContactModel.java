package in.co.air.line.ticket.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import in.co.air.line.ticket.bean.ContactBean;
import in.co.air.line.ticket.util.JDBCDataSource;

public class ContactModel {

	public static long nextPk() {
		long pk = 0;
		Connection conn;
		try {
			conn = JDBCDataSource.getConnection();
			PreparedStatement stmt = conn.prepareStatement("select Max(id_contactus) from contactus");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				pk = rs.getLong(1);
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return pk + 1;

	}

	public long saveContactUser(ContactBean contactUser) {

		Connection conn = null;
		int pk = 0;

		try {
			conn = JDBCDataSource.getConnection();
			pk = (int) nextPk();

			PreparedStatement pstmt = conn.prepareStatement("INSERT INTO contactus VALUES(?,?,?,?,?,?)");
			pstmt.setInt(1, pk);
			pstmt.setString(2, contactUser.getUserName());
			pstmt.setString(3, contactUser.getMobileNumber());
			pstmt.setString(4, contactUser.getUserEmail());
			pstmt.setString(5, contactUser.getUserCountry());
			pstmt.setString(6, contactUser.getUserQuery());
			pstmt.executeUpdate();
			conn.commit(); // End transaction
			pstmt.close();
		} catch (Exception e) {

			try {
				conn.rollback();
			} catch (Exception ex) {
				ex.printStackTrace();

			}

		} finally {
			JDBCDataSource.closeConnection(conn);
		}
		return pk;
	}

}
