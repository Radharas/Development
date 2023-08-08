
<%
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
<title>UpdateCategory-Admin</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<%@include file="components/navbar.jsp"%>
<body>
	<div class="container">

		<div class="row">
			<div class="col-md-6 offset-md-4">

				<div class="card mt-3">
					<div class="card-header bg-warning text-white">
						<%@ include file="components/message.jsp"%>
						<h1>Update Category-Details</h1>
					</div>

					<div class="card-body">



						<%
							String idCategory = request.getParameter("idCategory");
						try {
							Connection con = DbConnectionProvider.getCon();
							Statement stmt = con.createStatement();
							ResultSet rs = stmt.executeQuery("select *from category where categoryId ='" + idCategory + "' ");
							while (rs.next()) {
						%>

						<form action="UpdateCategoryCtl" method="post">


							<input type="hidden" name="idforUpdateCategory"
								value="<%out.println(idCategory);%>">


							<div class="form-group">
								<label for="Category-Description">Category Description</label> <input
									name="cDescription" value="<%=rs.getString(2)%>" type="text"
									class="form-control">
							</div>

							<div class="form-group">
								<label for="Category-Details">Category Title</label> <input
									name="cTitle" type="text" value="<%=rs.getString(3)%>"
									class="form-control">
							</div>

							<div class="container text-center">
								<button type="submit" class="btn btn-primary bg-info border-0">Update-Category
									Details</button>
							</div>
						</form>


						<%
							}

						} catch (Exception e) {
							System.out.println(e);
						}
						%>

					</div>


				</div>

			</div>
		</div>
		<div class="container">
			<a href="admin.jsp" class="text-right d-block mb-2">
				<h6 style="color: blue;">Go to Admin Page</h6>
			</a>
		</div>
	</div>

	<!--For Accessing CheckOut Page from directly Cart only -->
	<%@include file="components/common_modals.jsp"%>


</body>
<%@include file="components/footer.jsp"%>
</html>