package com.student;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/editproj")
public class editproj extends HttpServlet {
	static String developer;
	static String title;
	static String status;
	static String year;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		developer = request.getParameter("developer");
		title = request.getParameter("TITLE");
		status = request.getParameter("Status");
		year = request.getParameter("YEAR");
		
		if(status.equals("true"))
			status="1";
		else
			status="0";
		
		jdbcConnect temp = new jdbcConnect();
		
		try {
			if(temp.updateProj(developer,title,year,status))
			{
				System.out.println("Updated");
				response.sendRedirect("projects.jsp");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
