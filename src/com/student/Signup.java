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


@WebServlet("/Signup")
public class Signup extends HttpServlet {
	static String uname;
	static String email;
	static String password;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		uname = request.getParameter("username");
		email = request.getParameter("email");
		password = request.getParameter("password");
		
		System.out.println(uname);
		
		jdbcConnect temp = new jdbcConnect();
		try {
			if(temp.insertQuery(uname, email, password))
			{
				System.out.println("Inserted Successfully");
				response.sendRedirect("login.jsp");
			}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}
	
	
	

}
