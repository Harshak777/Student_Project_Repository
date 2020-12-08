<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
<html lang="en">

<body class="bg">
<header>
   <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/ncp"
         user = "root"  password = ""/>
     <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from project where id="<%= request.getParameter("pId") %>";
         
      </sql:query>
      
        </header>
        
<style>

body {
  background-color: #f2f2f2	;
}
* {
  box-sizing: border-box;
}

.bg {
  /* The image used */
  background-image: url("gg.jpg");

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.serif {
  font-family: "Times New Roman", Times, serif;
}
img {
  display: block;
  margin-left: auto;
  margin-right: auto;
}

.h2{
font-size: 30px;
}

.column {
  float: left;
  width: 40%;
  padding: 10px;
  height: 300px; 
  margin-left: 60px;
  margin-right: 20px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
div.a {
  font-size: 25px;
  font-family: "Times New Roman", Times, serif;
    margin-left: 100px;
	margin-right: 30px;
}
.heads{
  margin-left: 60px;
font-size: 25px;
 text-shadow:2px 2px #00FFFF;
}


.content {
  font-size: 25px;
  max-width: 800px;
  font-family: Times New Roman, Times, serif;
  margin: auto;
  text-shadow: 2px 2px #FF0000;
  border-style: double;
  border-width: medium;
  background-color:black;color:white
}
#myBtn {
  display: none;
  position: fixed;
  bottom: 20px;
  right: 30px;
  z-index: 99;
  font-size: 18px;
  border: none;
  outline: none;
  background-color: red;
  color: white;
  cursor: pointer;
  padding: 15px;
  border-radius: 4px;
}
#myBtn:hover {
  background-color: #555;
}
.columnimage {
  float: left;
  width: 33.33%;
  padding: 10px;
}
.column img {
  margin-top: 12px;
}
.rowimage:after {
   content: "";
  clear: both;
  display: table;
}
.bu {
  border: none;
  background-color: #4CAF50;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  margin-left: 60px;
}


</style>


 <c:forEach var = "row" items = "${result.rows}">



<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
<div class="content">
  <h1>${row.title}</h1>
</div>

<h2>Description:-</h2>
</div>

<div class="a">${row.description}</div>

<br>




<br>

<div class="row">
  <div class="column" style="background-color:#F1C40F;">
    <h2>Status:-</h2>
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

   
    <h2>last update:-</h2>
    <div class="a">${row.date}</div>
  </div>
  <div class="column" style="background-color:Orchid;">
    <h2>Done by:-</h2>
    <div class="a">${row.developer}</div>
   
  </div>
</div>

<button class="bu"><a href="editproject.jsp">Edit</a></button>


 </c:forEach>
 </body>
    </html>