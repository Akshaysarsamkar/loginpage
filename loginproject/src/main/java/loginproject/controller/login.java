package loginproject.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.Enumeration;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;

import loginproject.model.User;

/**
 * Servlet implementation class login
 */
@WebServlet
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("hi");
		req.removeAttribute("user");
		req.setAttribute("flag", true);
		RequestDispatcher rd= req.getRequestDispatcher("homepage.jsp");
		rd.forward(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("email");
		String password = request.getParameter("password");

		User user = new User();

		user.setEmail(email);
		user.setPassword(password);
		System.out.println(user);
		
		try {

			int saveUser = Repository.saveUser(user);
			
			
			System.out.println("Query Executed : "+saveUser);
			
			if(saveUser==1) {
				request.setAttribute("user", user);
				request.setAttribute("flag", false);
				RequestDispatcher rd= request.getRequestDispatcher("homepage.jsp");
				rd.forward(request, response);
			}else {
				RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
				rd.forward(request, response);
			}
			
		} catch (Exception e) {
			RequestDispatcher rd= request.getRequestDispatcher("error-page.jsp");
			rd.forward(request, response);
		}

	}
}
