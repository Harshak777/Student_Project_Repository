<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<% session = request.getSession(false);
Integer id = (Integer) session.getAttribute("name");
%>

<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="cs/style.css"/>
</head>
<style>
body {font-family:optima, Helvetica, sans-serif;}



input[type=text], input[type=password] {
  width: 90%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}



input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}


button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}


.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}

.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}


.container {
  padding: 16px;
}


.modal {
  /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: #474e5d;
  padding-top: 50px;
}


.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}


hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
 

.close {
  position: absolute;
  right: 35px;
  top: 15px;
  font-size: 40px;
  font-weight: bold;
  color: #f1f1f1;
}

.close:hover,
.close:focus {
  color: #f44336;
  cursor: pointer;
}


.clearfix::after {
  content: "";
  clear: both;
  display: table;
}


@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>

<body>

<div class="modal">

<sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/ncp"
         user = "root"  password = ""/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from user where id = <%=id%>;
      </sql:query>

  <form class="modal-content" action="editProf" method="post">
    <div class="container">
   <h1>Edit profile </h1>
     
    <hr>
<c:forEach var = "row" items = "${result.rows}">
<label for="username"><b>Username</b></label><br><br>
    <input type="text" value="${row.username}" name="uname" required>
  <br><br><br>
  
    <label for="desc"><b>Bio</b></label><br><br>
    <input type="text" value="${row.description}" name="bio" required>
  <br><br><br>
  
  <label for="password"><b>Password</b></label><br><br>
    <input type="password" value="${row.password}" name="password" required>
  <br><br><br>
  
    <label for="email"><b>Date of birth</b></label><br><br>
    <input type="text" value="${row.dob}" name="dob" required>
  <br><br><br>

    <label for="psw"><b>Address</b></label><br><br>
    <input type="text" value="${row.address}" name="address" required>
   <br><br><br>
    <label for="psw-repeat"><b>Email</b></label><br><br>
    <input type="text" value="${row.email}"   name="email"  required>
       <br><br><br>
   <label for="psw-repeat"><b>College</b></label><br><br>
    <input type="text" value="${row.insti}"  name="college"   required>
       <br><br><br>
    
   <label for="psw-repeat"><b>Phone number</b></label><br><br>
    <input type="text" value="${row.phno}"  name="phoneno"  required>

      <div class="clearfix">
        <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
        <button type="submit" class="signupbtn">Update</button>
      </div>
      </c:forEach>
    </div>
  </form>
</div>

</body>
</html>