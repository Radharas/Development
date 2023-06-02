<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Page</title>
<style>
/* Style inputs with type="text", select elements and textareas */
input[type=text], select, textarea {
	width: 100%; /* Full width */
	padding: 12px; /* Some padding */
	border: 1px solid #ccc; /* Gray border */
	border-radius: 4px; /* Rounded borders */
	box-sizing: border-box;
	/* Make sure that padding and width stays in place */
	margin-top: 6px; /* Add a top margin */
	margin-bottom: 16px; /* Bottom margin */
	resize: vertical
		/* Allow the user to vertically resize the textarea (not horizontally) */
}

/* Style the submit button with a specific background color etc */
input[type=submit] {
	background-color: #04AA6D;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

/* When moving the mouse over the submit button, add a darker green color */
input[type=submit]:hover {
	background-color: #45a049;
}

/* Add a background color and some padding around the form */
.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}
</style>
</head>
<body>
	<%@ include file="../jsp/Header.jsp"%>


	<%
		String msg = request.getParameter("msg");
	if ("valid".equals(msg)) {
	%>
	<h3 style="color: #ff6e40; font-family: italic;">
		<b>We Got Your Query, We will get back to you very soon...! Your
			Query is Submitted Successfully, to us .....!!! </b>
	</h3>

	<%
		}
	%>

	<%
		if ("invalid".equals(msg)) {
	%>
	<h3 style="color: red;">
		<b>While Submitting your Query, Got some error, Please try
			again...!</b>
	</h3>

	<%
		}
	%>


	<div class="card " style="width: 80rem;">
		<div class="container-fluid">

			<form action="<%=ATBView.CONTACT_CTL%>" method="post">

				<label for="fname">Your Name</label> <input type="text" id="name"
					name="name" placeholder="Your name.." required> <label
					for="lname">Mobile Number</label> <input type="number" id="phone"
					name="phone" placeholder="Your Mobile Number.." required><br>
				<label for="lname">Your Email ID!!</label> <input type="email"
					id="email" name="email" placeholder="Your Your Email ID.." required><br>

				<label for="country">Select Your Country</label> <select
					id="country" name="country">
					<option value="india">India</option>
					<option value="australia">Australia</option>
					<option value="canada">Canada</option>
					<option value="usa">USA</option>
				</select> <label for="subject">Your Query</label>
				<textarea id="subject" name="query" placeholder="Write something.."
					style="height: 200px" required></textarea>

				<input type="submit" value="Submit Your Query">

			</form>
		</div>
	</div>
</body>
<%@ include file="../jsp/Footer.jsp"%>
</html>