package com.student;

import java.util.*;
import java.lang.*;

import java.sql.*;
import java.sql.DriverManager;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Newsletter")
public class Newsletter extends HttpServlet {

	static String email;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		email = request.getParameter("email");
		
		jdbcConnect temp = new jdbcConnect();
		try {
			if(temp.insertEmail(email))
			{
				System.out.println("Inserted Successfully");
				response.sendRedirect("landing.jsp");
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

}
