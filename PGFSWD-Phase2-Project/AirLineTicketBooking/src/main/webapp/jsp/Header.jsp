<%@page import="in.co.air.line.ticket.controller.LoginCtl"%>
<%@page import="in.co.air.line.ticket.controller.ATBView"%>
<%@page import="in.co.air.line.ticket.bean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Header-Page</title>
<style>
.navbar-inverse {
	background-color: #3f51b5 !important;
	border-color: #080808;
}
</style>
<link rel="stylesheet"
	href="/AirLineTicketBooking/css/bootstrap.min.css">
<script src="/AirLineTicketBooking/js/jquery.min.js"></script>
<script src="/AirLineTicketBooking/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
  $( function() {
    $( "#datepicker" ).datepicker({
    	dateFormat : 'mm/dd/yy',
      changeMonth: true,
      changeYear: true,
      minDate:'0d'
    });
  } );
  </script>

<script language="javascript">
$(function(){
	$("#selectall").click(function () {
		  $('.case').attr('checked', this.checked);
	});
	$(".case").click(function(){

		if($(".case").length == $(".case:checked").length) {
			$("#selectall").attr("checked", "checked");
		} else {
			$("#selectall").removeAttr("checked");
		}

	});
});

</script>

</head>
<body>
	<%
    UserBean userBean = (UserBean) session.getAttribute("user");

    boolean userLoggedIn = userBean != null;

    String welcomeMsg = "Hi, ";

    if (userLoggedIn) {
        String role = (String) session.getAttribute("role");
        welcomeMsg += userBean.getFirstName() + " (Admin)";
    } else {
        welcomeMsg += "Guest";
    }

%>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="welcomeFlyAway.jsp">AirLine Ticket
				Booking</a>
		</div>
		<ul class="nav navbar-nav">
			<li><a href="<%=ATBView.WELCOME_CTL%>">Home</a></li>
			<%if(userLoggedIn){%>

			<%if(userBean.getRoleId()==1){%>
			<li><a href="<%=ATBView.FLIGHT_CTL%>">Add Flight</a></li>
			<li><a href="<%=ATBView.FLIGHT_LIST_CTL%>">Flight Report</a></li>
			<li><a href="<%=ATBView.BOOK_LIST_CTL%>">Booked Ticket
					Report</a></li>




		</ul>
		<ul class="nav navbar-nav navbar-right">
			<%} %>

			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#"><%=welcomeMsg%><span
					class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="welcomeAdmin.jsp">My Profile</a></li>
					<li><a href="updateAdminPwd.jsp">Change Password</a></li>
					<li><a
						href="<%=ATBView.LOGIN_CTL%>?operation=<%=LoginCtl.OP_LOG_OUT%>">LogOut</a></li>
				</ul></li>


			<%}else{%>
			<li><a href="<%=ATBView.INDEX_CTL%>">Book-Flight</a></li>
			<li><a href="<%=ATBView.LOGIN_CTL%>">Admin Login</a></li>
			<li><a href="welcomeGuest.jsp">Hi, Guest !</a></li>
			<li><a href="about.jsp">About</a></li>
			<li><a href="contact.jsp">Send Your Query</a></li>


			<%} %>

		</ul>

	</div>
	</nav>
</body>
</html>