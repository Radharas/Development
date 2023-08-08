
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
<title>Bill Payment</title>
<%@include file="components/common_css_js.jsp"%>

</head>
<%@include file="components/navbar.jsp"%>


<body>
	<div class="container-fluid">
		<div class="row mt-5">
			<div class="col-md-4 offset-md-4">

				<div class="card">

					<%@include file="components/message.jsp"%>
					<div class="card-body px-5">
						<div class="card-header bg-warning text-white mt-3 mb-3">
							<h4>Make Payment</h4>
						</div>
						<form name="payBill" method="get" action="invoiceDetail.jsp">


							<div class="form-group">
								<label for="phone" style="color: black !important;"><b>Card
										Number:</b></label> <input name="user_Card" type="number"
									class="form-control" id="cardNumber"
									aria-describedby="cardHelp"
									placeholder="Enter your Card Number Here..!!" required>
							</div>

							<div class="form-group">
								<label for="expiryDate"><b>Expiry Date of Card:</b></label> <br>
								<input type="date" id="expiryDate" name="expiryDate" required>
							</div>
							<div class="form-group">
								<label for="phone" style="color: black !important;"><b>CVV
										Number:</b></label> <input name="CVV" type="password" class="form-control"
									id="CVVNumber" aria-describedby="CVVHelp"
									placeholder="Enter your CVV Number Here..!!" required>
							</div>


							<div class="form-group">
								<label for="name" style="color: black !important;"><b>Card
										Holder Name:</b></label> <br> <input name="user_name" type="text"
									value="" class="form-control" id="name"
									aria-describedby="nameHelp"
									placeholder="Enter Card Holder Name Here..!!">
							</div>

							<%
								try {
								String userEmail = request.getParameter("emailId");
								String processing = "Processing";
								System.out.println("coming Id for Bill Print is: " + userEmail);
								Connection con = DbConnectionProvider.getCon();
								Statement stmt = con.createStatement();
								ResultSet rs = stmt.executeQuery("select SUM(purchase_TotalAmount) from purchasedrecord where purchase_UserEmail = '" + userEmail + "' AND purchase_DeliveryStatus = '" + processing + "'");
								String CountTotalAmount="";
								while (rs.next()) { 
									CountTotalAmount = rs.getString(1);
									System.out.println(CountTotalAmount);
								}	
							%>
							<div class="form-group">
								<label for="phone" style="color: black !important;"><b>Amount
										to be Paid:</b> </label> <input name="amount" type="number"
									value="<%=CountTotalAmount%>" class="form-control" id="amount"
									aria-describedby="amountHelp" required>
							</div>


							<%

							} catch (Exception e) {
								System.out.println(e);
							}
							%>



							<div class="container text-center">
								<input type="submit" name="makePayment" value="Make Payment">
							</div>


						</form>

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