<%@page import="com.kitchenstory.helper.Helper"%>
<%@page import="com.kitchenstory.helper.DbConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Searched Item</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<body>
	<%@include file="components/navbar.jsp"%>

	<!-- Show Products  -->
	<div class="col-md-10">
		<!-- Row -->
		<%@include file="components/message.jsp"%>
		<div class="row mt-4">

			<!-- Column:12 for Product -->
			<div class="col-md-12">

				<div class="card-columns">

					<!-- Searching inside Products -->
					<%
						HttpSession httpSession = request.getSession();
					int z = 0;
					try {
						String search = request.getParameter("searchName");
						Connection con = DbConnectionProvider.getCon();
						Statement stmt = con.createStatement();
						ResultSet rs = stmt.executeQuery(
						"select *from product where pName like '%" + search + "%' or pDesc like '%" + search + "%'  ");
						while (rs.next()) {
							z = 1;
					%>

					<!-- Product Card -->
					<div class="card product-card">

						<div class="container text-center">

							<img src="image/products/<%=rs.getString(5)%>"
								style="max-height: 200px; max-width: 100%; width: auto;"
								class="card-img-top m-2">

						</div>

						<div class="card-body">
							<h5 class="card-title"><%=rs.getString(4)%></h5>
							<p class="card-text">
								<!--p.getpDesc()c() %> -->
								<%=Helper.get10Words(rs.getString(2))%>
							</p>
						</div>

						<div class="card-footer text-center">
							<button class="btn bg-info text-white"
								onclick="add_to_cart(<%=rs.getString(1)%> , '<%=rs.getString(4)%>', <%=rs.getString(3)%>)">Add
								to Cart</button>
							<button class="btn btn-outline-success">
								&#8377;<%=rs.getString(3)%>/- <span
									class="text-secondary discount-label">&#8377; <%=rs.getString(6)%>
									, <%=rs.getString(3)%>% off
								</span>
							</button>

						</div>
					</div>

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

	<%
		if (z == 0) {
		httpSession.setAttribute("message", "Searched Item's Data does not exist...Please try Again...!!! ");
		response.sendRedirect("index.jsp");
		return;
	}
	%>

	<%@include file="components/common_modals.jsp"%>

</body>

<%@include file="components/footer.jsp"%>
</html>