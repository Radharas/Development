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
 * Servlet implementation class DeleteProductCtl
 */
@WebServlet(name = "DeleteProductCtl", urlPatterns = { "/DeleteProductCtl" })
public class DeleteProductCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteProductCtl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		
		
		String idForProduct = request.getParameter("idProduct");
		System.out.println("Coming ID value is:" + idForProduct);

		try {
			Connection conn = DbConnectionProvider.getCon();
			Statement st = conn.createStatement();

			st.executeUpdate("delete from product where pId = '" + idForProduct + "'  ");
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("message",
					"Product records got deleted Successfully..!! Deleted Products' ID is ="
							+ idForProduct);
			response.sendRedirect("adminProductMgmt.jsp");
		} catch (Exception e) {
			System.out.println(e);

		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
