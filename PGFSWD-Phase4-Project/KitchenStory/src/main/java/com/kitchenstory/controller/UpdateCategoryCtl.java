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
 * Servlet implementation class UpdateCategoryCtl
 */
@WebServlet(name = "UpdateCategoryCtl", urlPatterns = { "/UpdateCategoryCtl" })
public class UpdateCategoryCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCategoryCtl() {
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
		
		String idCategory =request.getParameter("idforUpdateCategory");
		System.out.println("Coming Id for Update Value is:" + idCategory);
		
		String c_Description =request.getParameter("cDescription");
		String c_Title =request.getParameter("cTitle");
				
		try {
			Connection conn = DbConnectionProvider.getCon();
			Statement st = conn.createStatement();
			st.executeUpdate("update category set categoryDescription='"+c_Description+"',categoryTitle='"+c_Title+"' where categoryId='"+idCategory+"' ");
			
			httpSession.setAttribute("message", "Category Updated Successful: !!! Product ID is: " + idCategory);
			response.sendRedirect("adminCategoriesMgmt.jsp");
			return;
		} catch (Exception e) {
			System.out.println(e);
			httpSession.setAttribute("message", "some problem occur: Please try again !!!  ");
			response.sendRedirect("adminCategoriesMgmt.jsp");
		}
		
		
		
		
	}

}
