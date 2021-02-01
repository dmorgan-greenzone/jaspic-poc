package org.greenzone.jaspicpoc.servlet;

import java.io.IOException;
import java.security.Principal;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CurrentDateServlet
 */
@WebServlet("/date")
public class CurrentDateServlet extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Principal p = request.getUserPrincipal();
		if (p != null) {
			System.out.println("We got a user!!!: " + p.getName());
		}
		request.getRequestDispatcher("/WEB-INF/time.jsp").forward(request, response);
	}
	
	private static final long serialVersionUID = 1L;
}