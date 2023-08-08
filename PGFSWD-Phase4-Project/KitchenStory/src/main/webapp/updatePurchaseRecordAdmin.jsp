
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
<title>Update-PurchaseRecord</title>
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
						<h1>Update-Purchase Record</h1>
					</div>

					<div class="card-body">



						<%
							String idPurchase = request.getParameter("idPurchase");
						try {
							Connection con = DbConnectionProvider.getCon();
							Statement stmt = con.createStatement();
							ResultSet rs = stmt.executeQuery("select *from purchasedrecord where id_Purchase ='" + idPurchase + "' ");
							while (rs.next()) {
						%>

						<form action="UpdatePurchaseRecordCtl" method="post">


							<input type="hidden" name="idforUpdatePurchaseDeatils"
								value="<%out.println(idPurchase);%>">


							<div class="form-group">
								<label for="purchaseUser">User Name</label> <input
									name="userName" value="<%=rs.getString(2)%>" type="text"
									class="form-control">
							</div>

							<div class="form-group">
								<label for="emailForPurchase">Email Id</label> <input
									name="emailUser" type="email" value="<%=rs.getString(3)%>"
									class="form-control">
							</div>

							<div class="form-group">
								<label for="Mobile-Number">Phone Number</label> <input
									name="usermobile" value="<%=rs.getString(4)%>" type="number"
									class="form-control">
							</div>

							<div class="form-group">
								<label for="Purchase-Date">Date</label> <input name="date"
									value="<%=rs.getString(6)%>" type="text" class="form-control">
							</div>

							<div class="form-group">
								<label for="Product-Category">Product Category</label> <input
									name="category" value="<%=rs.getString(7)%>" type="text"
									class="form-control">
							</div>

							<div class="form-group">
								<label for="Total-Amount">Total Amount</label> <input
									name="totalAmount" value="<%=rs.getString(10)%>" type="number"
									class="form-control">
							</div>

							<div class="form-group">
								<label for="Shipping-Address"><b> Shipping Address</b></label> <input
									name="shippingAddress" value="<%=rs.getString(5)%>"
									type="text" class="form-control" required></input>
							</div>

							<div class="form-group">
								<label for="Total-Amount">Delivery Status</label> <input
									name="deliveryStatus" value="<%=rs.getString(8)%>" type="text"
									class="form-control">
							</div>

							<div class="form-group">
								<label for="Total-Amount">Payment Options</label> <input
									name="paymentMode" value="<%=rs.getString(9)%>" type="text"
									class="form-control">
							</div>

							<div class="form-group">
								<label for="Total-Amount">Time for Delivery</label> <input
									name="totalDaysforDelivery" value="<%=rs.getString(11)%>"
									type="text" class="form-control">
							</div>


							<div class="container text-center">
								<button type="submit" class="btn btn-primary bg-info border-0">Update-Purchase
									records</button>
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