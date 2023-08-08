<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>About Page</title>

<%@include file="components/common_css_js.jsp"%>
<link rel="stylesheet"
	href="css/welocmePage_aboutPage_userPage_Foodbox.css">
<meta name="viewport" content="width=device-width, initial-sclae=1.0">

</head>
<body>
	<%@include file="../components/navbar.jsp"%>
<body>
	<div class="about-section">
		<div class="inner-width">
			<h1 style="color: #673ab7 !important">
				<b>About Kitchen-Story Online Portal</b>
			</h1>
			<div class="border"></div>
			<div class="about-section-row">
				<div class="about-section-col">
					<div class="about">
						<p>Kitchen Story is an e-commerce portal that lets people shop
							basic kitchens' items on their website.This Kitchen Story
							Application has a multiple category for selecting and ordering
							kitchen items. Previously we have a Offline Shop, and now, We
							wish to launching Our E-commerce application with a rich and
							user-friendly interface.</p>
						<a href="kitchenStoryWelcome.jsp" style="color: blue;">Know
							more about us..!!</a>
					</div>
				</div>
				<div class="about-section-col">
					<h2 style="color: blue;">Food Category on the basis of Users'
						Ratings</h2>
					<div class="skills">
						<div class="skill">
							<div class="title">Grocery Products</div>
							<div class="progress">
								<div class="progress-bar p1">
									<span>90%</span>
								</div>
							</div>
						</div>

						<div class="skill">
							<div class="title">Kitchen-Electronics</div>
							<div class="progress">
								<div class="progress-bar p2">
									<span>85%</span>
								</div>
							</div>
						</div>

						<div class="skill">
							<div class="title">Vegetables</div>
							<div class="progress">
								<div class="progress-bar p2">
									<span>79.30%</span>
								</div>
							</div>
						</div>
						<div class="skill">
							<div class="title">Plastic Storage</div>
							<div class="progress">
								<div class="progress-bar p2">
									<span>69%</span>
								</div>
							</div>
						</div>

						<div class="skill">
							<div class="title">Household Items</div>
							<div class="progress">
								<div class="progress-bar p3">
									<span>65%</span>
								</div>
							</div>
						</div>
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