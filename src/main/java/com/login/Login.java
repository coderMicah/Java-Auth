package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//Get credentials
		String name = request.getParameter("username");
		String pswd = request.getParameter("pswd");

		//Create session
		HttpSession session = request.getSession();

		//Authenticate the credentials
		if (name.equals("John") && pswd.equals("book")) {
			//If user is authenticated set session attributes and continue to next page
			session.setAttribute("pswd", pswd);
			session.setAttribute("name", name);
			response.sendRedirect("Welcome.jsp");
		} else
			//If user is not authenticated redirect back to login page
			response.sendRedirect("Login.jsp");
	}

}
