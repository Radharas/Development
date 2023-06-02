<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome Page</title>
</head>
<style>
body {
	background-image: url("images/adminBG.jpg");
	background-size: 1550px 720px;
	background-repeat: no-repeat;
}

.no-background {
	background-image: url("images/welcomeImage.jpg");
}
</style>
<body>
	<%@ include file="../jsp/Header.jsp"%>
	<h1 style="margin: 234px; font-family: inherit; color: white;">
		<b>Welcome @ Admin to <br>AirLine Ticket-Booking <br>Portal
			For Adding <br>Flight Please Click Here
		</b> <br>
		<a href="<%=ATBView.FLIGHT_CTL%>"
			style="color: blue; font-family: italic;"><b>Add Flight </b>!!</a>
	</h1>

	<%@ include file="../jsp/Footer.jsp"%>
</body>
</html>