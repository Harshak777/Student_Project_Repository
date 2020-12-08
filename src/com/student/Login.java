package com.student;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
	
	static String email;
	static String password;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		email = request.getParameter("email");
		password = request.getParameter("password");

		jdbcConnect temp = new jdbcConnect();
		
		try {
			if(temp.verifyLogin(email,password))
			{
				int id=temp.getId(email);
				String uname=temp.getUname(email);
				System.out.println("Login successful");
				  
				HttpSession session=request.getSession();
				session.setAttribute("name",id);
				session.setAttribute("uname",uname);
				
				response.sendRedirect("projects.jsp");
				return;
			}
			else
			{
				System.out.println("Login unsuccessful");
				response.sendRedirect("login.jsp");
				return;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
