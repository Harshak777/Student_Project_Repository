<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<% session = request.getSession(false);
Integer id = (Integer) session.getAttribute("name");
String uname = (String) session.getAttribute("uname");
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Students Corner</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="projects/css/style.css"/>
</head>
<body>


<style>
body {
  background-image: url('projects/d.jpg');
 
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}


.button {
  border: none;
  color: white;
  padding: 3px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 13px;
  margin: 4px 2px;
  cursor: pointer;
}


.button1 {border-radius: 35%;background-color: #F74343;}
.button2 {border-radius: 35%;background-color: #E4D01D;}
.button3 {border-radius: 35%;background-color: #32D864;}
.button4 {border-radius: 35%;background-color: #E4801D;}





</style>




  <header>
   <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/ncp"
         user = "root"  password = ""/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from project;
         
      </sql:query>
          


 
  <body >
  <header>
        <div class="navb">
      <a id="link" href="landing.jsp">SC</a>
      <div class="dd" style="float: right;">
        <button class="db"><%=uname%>
        <i class="fa fa-caret-down"></i>
        </button>
        <div class="dd-content">
    
        
        <a id="link" href="profile.jsp">My Profile</a>
        <a id="link" href="editprofile.jsp">Edit Profile</a>
        <a id="link" href="landing.jsp">Log Out</a>
        </div>
      </div>
      <div class="dd" style="float: right;">
      <a style="float: right;" id="link" href="about.jsp">About Us</a>
          <a style="float: right;" id="link" href="addproj.jsp">Add Projects</a>
          <a style="float: right;" id="link" href="projects.jsp">Projects</a>
      </div>
    </header>
  <br>
  <br>
  
   <table  background="db.jpg" align="center" style="width:80%" class="table  table-striped table-dark">
  <tr>
    
       
        
  </tr>
      
    
 <c:forEach var = "row" items = "${result.rows}">
 

  <tr>
    
    
   
   <td>
   
   <p style="font-size:2vw"><a href="viewproj.jsp?pId=${row.id}"><b> ${row.title}
   </b></a></p>
   
   <p style="font-size:1.2vw"> By  <font style="color:yellow">    ${row.developer}
</font>      

    
  
    
    
    <c:choose>
    <c:when test="${row.status=='1'}">
        
         <p style="font-size:1.2vw"><b>  <font style="color:green"> Completed</font>   </b></p>
    </c:when>    
    <c:otherwise>
          
       <p style="font-size:1.2vw"><b>  <font style="color:red">     Ongoing
</font>     
   </b></p>
    </c:otherwise>
</c:choose>
   
      

  
  
   
   <font style="font-size:1vw"><em>${row.date}</em> </font>  </p>
  </p>
  
   
   
   
   </td>
   
    
  </tr>
 

   
 </c:forEach>




</table>
<br><br>

   <br />
   <% out.println("The Number is "+id); %>
    <footer>
        <div class="small text-center text-muted">Copyright © <script>document.write(new Date().getFullYear())</script> - Student Corner</div>
    </footer>
   
  </div>
  </body >
  </html>