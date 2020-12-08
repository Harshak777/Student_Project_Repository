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

@WebServlet("/editProf")
public class editProf extends HttpServlet {
    static String dob;
    static String email;
    static String phoneno;
    static String address;
    static String college;
    static String uname;
    static String bio;
    static String password;
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      
      dob = request.getParameter("dob");
      email = request.getParameter("email");
      phoneno = request.getParameter("phoneno");
      address = request.getParameter("address");
      email = request.getParameter("email");
      college= request.getParameter("college");
      uname= request.getParameter("uname");
      bio= request.getParameter("bio");
      password= request.getParameter("password");
      
      System.out.println(dob);
      
      jdbcConnect temp = new jdbcConnect();
      
      try {
      if(temp.updateProf(uname,bio,password,dob,email,phoneno,address,college))
      {
        System.out.println("Successfully updated");
        response.sendRedirect("projects.jsp");
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
      
    }
    

}