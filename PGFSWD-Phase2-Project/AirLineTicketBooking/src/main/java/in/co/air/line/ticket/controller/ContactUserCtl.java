package in.co.air.line.ticket.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.co.air.line.ticket.bean.ContactBean;
import in.co.air.line.ticket.model.ContactModel;
import in.co.air.line.ticket.util.ServletUtility;

/**
 * Servlet implementation class ContactUserCtl
 */
@WebServlet(name = "ContactUserCtl", urlPatterns = { "/ContactUserCtl" })
public class ContactUserCtl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ContactUserCtl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		try {
			PrintWriter out = response.getWriter();

			String userName = request.getParameter("name");
			String userPhone = request.getParameter("phone");
			String userEmail = request.getParameter("email");

			String userCountry = request.getParameter("country");
			String userQuery = request.getParameter("query");

			ContactBean contactUser = new ContactBean();
			contactUser.setUserName(userName);
			contactUser.setMobileNumber(userPhone);
			contactUser.setUserEmail(userEmail);
			contactUser.setUserCountry(userCountry);
			contactUser.setUserQuery(userQuery);

			ContactModel contactUserDao = new ContactModel();

			long contactUserId = contactUserDao.saveContactUser(contactUser);

			/* For displaying message properly at the VIEW Part */
			if (contactUserId > 0) {

				response.sendRedirect("contact.jsp?msg=valid");
			} else {

				response.sendRedirect("contact.jsp?msg=invalid");

			}

			return;

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
