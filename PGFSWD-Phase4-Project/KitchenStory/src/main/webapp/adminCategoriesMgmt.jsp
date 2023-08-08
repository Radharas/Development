<%
HttpSession httpSession = request.getSession();
	User user =  (User) session.getAttribute("current-user");
		if(user == null){
			
			session.setAttribute("message", "You are not logged in !!! Please login first");
			response.sendRedirect("login.jsp");
		}else
		{
			if(user.getUserType().equals("normal")){
			
				session.setAttribute("message", "You are not admin !!! Do not Access this Page...!!!");
				response.sendRedirect("login.jsp");
			}	
			
			
		}


%>

<%@page import="com.kitchenstory.helper.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin-CategoryManagement</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<%@include file="components/navbar.jsp"%>
<body>
	<div class="row card-header bg-warning mt-3 mb-3">
		<h1 style="color: black;">
			Categories: 
		</h1>
	</div>
	<div class="row">
		<%@include file="components/message.jsp"%>
		<div class="col-md-12">

			<table class="table table-bordered table-secondary">
				<thead>
					<tr>
						<th scope="col">Category-Id</th>
						<th scope="col">Category-Description</th>
						<th scope="col">Category-Title</th>
						<th scope="col">Update Action</th>
						<th scope="col">Delete Action</th>
					</tr>
				</thead>
				<tbody>
					<%
								try {

								//String userEmail = request.getParameter("emailId");
								//System.out.println("coming Id for Bill Print is: " + userEmail);
								Connection con = DbConnectionProvider.getCon();
								Statement stmt = con.createStatement();
								ResultSet rs = stmt.executeQuery("select *from category");
								while (rs.next()) {
							%>
					<tr>

						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString(3)%></td>
						<td><a href="updateCategoryAdmin.jsp?idCategory=<%=rs.getString(1)%>"><h6>Update Record</h6></a></td>
						<td><h6>Category Can't be deleted due Foreign Key Constraint</h6></a></td>
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

	<!--For Accessing CheckOut Page from directly Cart only -->
	<%@include file="components/common_modals.jsp"%>

<div class="container">
	<a href="admin.jsp" class="text-right d-block mb-2">
		<h6 style="color: blue;">Go to Admin Page</h6>
	</a>
</div>
</body>
<%@include file="components/footer.jsp"%>
</html>