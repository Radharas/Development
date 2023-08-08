<%@page import="com.kitchenstory.entities.User"%>
<%
	User user = (User) session.getAttribute("current-user");
System.out.println("User Session is :" + user);
if (user == null) {

	session.setAttribute("message", "You are not logged in !! Login first to access Checkout page");
	response.sendRedirect("login.jsp");
	return;

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
<title>Invoice Page</title>
<%@include file="components/common_css_js.jsp"%>
<link rel="stylesheet"
	href="css/welocmePage_aboutPage_userPage_Foodbox.css">

</head>
<%@include file="components/navbar.jsp"%>
<body>
	<div class="about-section">
		<div class="inner-width">
			<%@include file="components/message.jsp"%>
			<h1 style="color: black !important">
				<b>Payment Page</b>
			</h1>
			<div class="border"></div>
			<div class="about-section-row">
				<div class="about-section-col">
					<div class="about">
						<p>
							<b><h1 style="color: blue;">Your Payment Got successful</h1></b>
						</p>

						<a href="index.jsp" style="color: blue;"><b>For
								Kitchen-Story Galary Please visit here...!!</b></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!--For Accessing CheckOut Page from directly Cart only -->
	<%@include file="components/common_modals.jsp"%>
</body>

<%@include file="components/footer.jsp"%>
</html>