package in.co.air.line.ticket.controller;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.co.air.line.ticket.util.JDBCDataSource;

/**
 * Servlet implementation class UpdateAdminPwdCtl
 */
@WebServlet(name = "UpdateAdminPwdCtl", urlPatterns = { "/UpdateAdminPwdCtl" })
public class UpdateAdminPwdCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateAdminPwdCtl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		String email = request.getParameter("login");
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String updatedPassword = request.getParameter("password");
		int check = 0;
		Connection conn;
		try {
			conn = JDBCDataSource.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery("select *from a_user where login='" + email + "' and firstName='"
					+ firstName + "' and lastName='" + lastName + "' ");
			while (rs.next()) {
				check = 1;
				stmt.executeUpdate("update a_user set password='" + updatedPassword + "' where login='" + email + "' ");
				response.sendRedirect("updateAdminPwd.jsp?msg=updated");
			}
			if (check == 0) {
				response.sendRedirect("updateAdminPwd.jsp?msg=notUpdated");
			}
		} catch (Exception e) {
			System.out.println(e);
		}

	}

}
