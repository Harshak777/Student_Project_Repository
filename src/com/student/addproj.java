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

@WebServlet("/addproj")
public class addproj extends HttpServlet {
	
    static String name;
    static String  desc;
    static String projectname;
    static String des;
    static String status;
    static String year;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      name= request.getParameter("name");
      desc = request.getParameter("desc");
      projectname = request.getParameter("projectname");
      status = request.getParameter("status");
      year= request.getParameter("year");
      
      if(status.equals("Finish"))
    	  status="1";
      else
    	  status="0";
      
      jdbcConnect temp = new jdbcConnect();
      
      try {
      if(temp.insertProj(name,desc,projectname,year,status))
      {
        System.out.println("Successfully updated");
        response.sendRedirect("projects.jsp");
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
      
    }
    

}