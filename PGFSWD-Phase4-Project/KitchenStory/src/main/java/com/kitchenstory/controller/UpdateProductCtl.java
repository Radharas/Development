package com.kitchenstory.controller;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitchenstory.helper.DbConnectionProvider;

/**
 * Servlet implementation class UpdateProductCtl
 */

@WebServlet(name = "UpdateProductCtl", urlPatterns = { "/UpdateProductCtl" })
public class UpdateProductCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateProductCtl() {
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
		
		String idProduct =request.getParameter("idforUpdateProduct");
		System.out.println("Coming Id for Update Value is:" + idProduct);
		
		String p_Description =request.getParameter("pDescription");
		String p_Discount =request.getParameter("pDiscount");
		String p_Name =request.getParameter("pName");
		String p_Price =request.getParameter("pPrice");
		String p_Quantity =request.getParameter("pQuantity");
		
				
		try {
			Connection conn = DbConnectionProvider.getCon();
			Statement st = conn.createStatement();
			st.executeUpdate("update product set pDesc='"+p_Description+"',pDiscount='"+p_Discount+"', pName='"+p_Name+"',pPrice='"+p_Price+"', pQuantity='"+p_Quantity+"' where pId='"+idProduct+"' ");
			
			httpSession.setAttribute("message", "Product Updated Successful: !!! Product ID is: " + idProduct);
			response.sendRedirect("adminProductMgmt.jsp");
			return;
		} catch (Exception e) {
			System.out.println(e);
			httpSession.setAttribute("message", "some problem occur: Please try again !!!  ");
			response.sendRedirect("adminProductMgmt.jsp");
		}
				
	}

}
