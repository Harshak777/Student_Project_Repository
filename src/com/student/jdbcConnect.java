package com.student;

import java.util.*;
import java.lang.*;

import java.sql.*;
import java.sql.DriverManager;

public class jdbcConnect {

	static final String drive="com.mysql.jdbc.Driver";
	static final String url="jdbc:mysql://localhost/ncp";
	static final String user="root";
	static final String pass="";
			

	public boolean insertQuery(String uname, String email, String password) throws Exception {
		System.out.println("Establishing JDBC Connection");
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="";
		
		Class.forName(drive);
		System.out.println("Connecting to DB....");
		conn=DriverManager.getConnection(url,user,pass);
		System.out.println("Connection successful.... \n");
		
		stmt=conn.createStatement();
		stmt.executeUpdate("INSERT INTO user  ( Username , Email , Password) VALUES ('"+uname+"','"+email+"','"+password+"')");
		System.out.println("Done");
		
		return true;
	}
	
	public boolean insertEmail(String email) throws Exception {
		System.out.println("Establishing JDBC Connection");
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="";
		
		Class.forName(drive);
		System.out.println("Connecting to DB....");
		conn=DriverManager.getConnection(url,user,pass);
		System.out.println("Connection successful.... \n");
		
		stmt=conn.createStatement();
		stmt.executeUpdate("INSERT INTO Newsletter  (Email) VALUES ('"+email+"')");
		System.out.println("Done");
		
		return true;
	}
	
	public boolean updateProj(String developer, String title, String year, String status) throws Exception {
		System.out.println("Establishing JDBC Connection");
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="";
		
		Class.forName(drive);
		System.out.println("Connecting to DB....");
		conn=DriverManager.getConnection(url,user,pass);
		System.out.println("Connection successful.... \n");
		
		stmt=conn.createStatement();
		stmt.executeUpdate("update project set developer= '"+developer+"', title= '"+title+"', date= '"+year+"', status= '"+status+"'");
		System.out.println("Done");
		
		return true;
	}
	
	public boolean insertProj(String developer,String desc, String title, String year, String status) throws Exception {
		System.out.println("Establishing JDBC Connection");
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="";
		
		Class.forName(drive);
		System.out.println("Connecting to DB....");
		conn=DriverManager.getConnection(url,user,pass);
		System.out.println("Connection successful.... \n");
		
		stmt=conn.createStatement();
		stmt.executeUpdate("INSERT INTO project  ( description , developer , title, status, date) VALUES ('"+desc+"','"+developer+"','"+title+"','"+status+"','"+year+"')");
		System.out.println("Done");
		
		return true;
	}
	
	public boolean verifyLogin(String email, String password) throws Exception {
		System.out.println("Establishing JDBC Connection");
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		String sql="";
		Class.forName(drive);
		System.out.println("Connecting to DB....");
		conn=DriverManager.getConnection(url,user,pass);
		System.out.println("Connection successful.... \n");
		stmt=conn.createStatement();
		//stmt.executeUpdate("insert INTO user ( Username , Email , Password) VALUES ('"+email+"','"+password+"')");
		String sel = "SELECT * from user where email ='"+email+"' and password= '"+password+"'";
		ResultSet result=stmt.executeQuery(sel);
		
		if(result.next())
			return true ;
		System.out.println("Done");
		return false;
	}
	
	public boolean updateProf(String uname,String bio,String password, String dob , String email, String phoneno , String address, String college) throws Exception {
		System.out.println("Establishing JDBC Connection");
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="";
		
		Class.forName(drive);
		System.out.println("Connecting to DB....");
		conn=DriverManager.getConnection(url,user,pass);
		System.out.println("Connection successful.... \n");
		
		stmt=conn.createStatement();
		stmt.executeUpdate("update user set username= '"+uname+"', description= '"+bio+"', password= '"+password+"', dob= '"+dob+"', email= '"+email+"', phno= '"+phoneno+"', address= '"+address+"', insti= '"+college+"'");
		System.out.println("Updated sucessfully");
		
		return true;
	}
	
	public int getId(String email) throws Exception {
		System.out.println("Establishing JDBC Connection");
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="";
		
		Class.forName(drive);
		System.out.println("Connecting to DB....");
		conn=DriverManager.getConnection(url,user,pass);
		System.out.println("Connection successful.... \n");
		
		stmt=conn.createStatement();
		String sel = "select id from user where email = '"+email+"'";
		ResultSet result=stmt.executeQuery(sel);
		
		
		int id=0;
		while(result.next())
		{
			id = result.getInt("id");
		}
		
		System.out.print(id);
		
		return id;
	}
	
	public String getUname(String email) throws Exception {
		System.out.println("Establishing JDBC Connection");
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="";
		
		Class.forName(drive);
		System.out.println("Connecting to DB....");
		conn=DriverManager.getConnection(url,user,pass);
		System.out.println("Connection successful.... \n");
		
		stmt=conn.createStatement();
		String sel = "select username from user where email = '"+email+"'";
		ResultSet result=stmt.executeQuery(sel);
		
		
		String s="";
		while(result.next())
		{
			s = result.getString("username");
		}
		
		return s;
	}
	
	public boolean verifyEmail(String email) throws Exception {
		System.out.println("Establishing JDBC Connection");
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		String sql="";
		Class.forName(drive);
		System.out.println("Connecting to DB....");
		conn=DriverManager.getConnection(url,user,pass);
		System.out.println("Connection successful.... \n");
		stmt=conn.createStatement();
		String sel = "SELECT * from user where email ='"+email+"'";
		ResultSet result=stmt.executeQuery(sel);
		System.out.println(sel);
		if(result.next())
			return true ;
		System.out.println("Done");
		return false;
	}
	
}
