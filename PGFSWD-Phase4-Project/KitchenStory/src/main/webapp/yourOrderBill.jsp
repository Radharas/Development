<%@page import="com.kitchenstory.helper.Helper"%>
<%@page import="com.kitchenstory.helper.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your-OrderPage</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<%@include file="components/navbar.jsp"%>
<body>

	<div class="row card-header bg-warning mt-3 mb-3">
		<h1 style="color: black;">
			Your Previous active order details are:
		</h1>
	</div>
	<div class="row">
		<%@include file="components/message.jsp"%>
		<div class="col-md-12">

			<table class="table table-bordered table-secondary">
				<thead>
					<tr>
						<th scope="col">Name</th>
						<th scope="col">Email</th>
						<th scope="col">Contact</th>
						<th scope="col">Address</th>
						<th scope="col">Date</th>
						<th scope="col">Category</th>
						<th scope="col">DeliveryStatus</th>
						<th scope="col">ModeOfPayment</th>
						<th scope="col">Amount</th>
						<th scope="col">Time</th>
					</tr>
				</thead>
				<tbody>
					<%
					HttpSession httpSession = request.getSession();
					int z=0;
								try {

							String userEmail = request.getParameter("orderedEmail");
							System.out.println("coming Id for Bill Print is: " + userEmail);
							
								Connection con = DbConnectionProvider.getCon();
								Statement stmt = con.createStatement();
								ResultSet rs = stmt.executeQuery("select *from purchasedrecord where purchase_UserEmail ='" + userEmail + "' ");
								while (rs.next()) {
									z=1;
							%>
					<tr>

						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><%=rs.getString(4)%></td>
						<td><%=rs.getString(5)%></td>
						<td><%=rs.getString(6)%></td>
						<td><%=rs.getString(7)%></td>
						<td><%=rs.getString(8)%></td>
						<td><%=rs.getString(9)%></td>
						<td><%=rs.getString(10)%></td>
						<td><%=rs.getString(11)%></td>
					</tr>

					<%
								}

							} catch (Exception e) {
								System.out.println(e);
							}
							%>
				</tbody>

			</table>

		</div>
	</div>


<%
		if (z == 0) {
		httpSession.setAttribute("message", "No Ordered found with this E-mail Id...Please shop with us...!!!");
		response.sendRedirect("normalUser.jsp");
		return;
	}
	%>


	<!--For Accessing CheckOut Page from directly Cart only -->
	<%@include file="components/common_modals.jsp"%>
</body>
<%@include file="components/footer.jsp"%>

</html>