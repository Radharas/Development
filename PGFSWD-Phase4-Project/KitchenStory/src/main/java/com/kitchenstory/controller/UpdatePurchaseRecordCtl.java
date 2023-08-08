package com.kitchenstory.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitchenstory.helper.DbConnectionProvider;

/**
 * Servlet implementation class UpdatePurchaseRecordCtl
 */
@WebServlet(name = "UpdatePurchaseRecordCtl", urlPatterns = { "/UpdatePurchaseRecordCtl" })
public class UpdatePurchaseRecordCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePurchaseRecordCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
HttpSession httpSession = request.getSession();
		
		String idPurchase =request.getParameter("idforUpdatePurchaseDeatils");
		System.out.println("Coming Id for Update Value is:" + idPurchase);
		
		String purchaseUser =request.getParameter("userName");
		String purchaseUserEmail =request.getParameter("emailUser");
		String purchaseUserPhone =request.getParameter("usermobile");
		String purchaseDate =request.getParameter("date");
		String purchaseCategory =request.getParameter("category");
		
		String purchaseAmount =request.getParameter("totalAmount");
		String deliveryAddress =request.getParameter("shippingAddress");
		
		String deliveryStatus = request.getParameter("deliveryStatus");
		String paymentMode = request.getParameter("paymentMode");
		String totalDaysforDelivery = request.getParameter("totalDaysforDelivery");
	
		
				
		try {
			Connection conn = DbConnectionProvider.getCon();
			Statement st = conn.createStatement();
			st.executeUpdate("update purchasedrecord set purchase_User='"+purchaseUser+"',purchase_UserEmail='"+purchaseUserEmail+"', purchase_Date='"+purchaseDate+"',purchase_Category='"+purchaseCategory+"', purchase_TotalAmount='"+purchaseAmount+"' , purchase_UserContact='"+purchaseUserPhone+"', purchase_UserShippingAddress='"+deliveryAddress+"', purchase_ExpectedDaysForDelivery='"+totalDaysforDelivery+"', purchase_PaymentMode='"+paymentMode+"', purchase_DeliveryStatus='"+deliveryStatus+"' where id_Purchase='"+idPurchase+"' ");
			
			httpSession.setAttribute("message", "Purchase Record got Updated Successfully: !!! Purchase ID is: " + idPurchase);
			response.sendRedirect("adminPurchaseRecordsMgmt.jsp");
			return;
		} catch (Exception e) {
			System.out.println(e);
			httpSession.setAttribute("message", "some problem occur: Please try again !!!  ");
			response.sendRedirect("adminPurchaseRecordsMgmt.jsp");
		}
		
		
	}

}
