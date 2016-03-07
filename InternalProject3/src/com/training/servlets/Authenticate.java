package com.training.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Authenticate
 */
public class Authenticate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Authenticate() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");
		String pwd = request.getParameter("pass");

		String valid_name = "dhawal";
		String valid_pwd = "dhawal123";
		
		HttpSession session = request.getSession();
		session.setAttribute("user_session", name);

		if (name.equals(valid_name) && pwd.equals(valid_pwd)) {
			// out.println("Valid User");
			response.sendRedirect("ValidateUser.jsp");
		} else {
			out.println("Invalid Credentials");
			out.println(name);
			out.println(pwd);
		}
	}

}
