package com.student;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

@WebServlet("/checkEmail")
public class checkEmail extends HttpServlet {
	
	static String email;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		email = request.getParameter("email");

		jdbcConnect temp = new jdbcConnect();
		
		try {
			if(temp.verifyEmail(email))
			{
				HttpSession session=request.getSession();
				session.setAttribute("exist","yes");
				
				response.sendRedirect("forget.jsp");
				return;
			}
			else
			{
//				System.out.println("Login unsuccessful");
				HttpSession session=request.getSession();
				session.setAttribute("exist","no");
				response.sendRedirect("forget.jsp");
				return;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
