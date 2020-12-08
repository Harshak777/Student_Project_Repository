<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
   <head>
      <title>Edit</title>
      <link rel="icon" type="image/png" href="editproject/images/icons/favicon.ico"/>
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="editproject/vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="editproject/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="editproject/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="editproject/vendor/animate/animate.css">
	<!--===============================================================================================-->	
		<link rel="stylesheet" type="text/css" href="editproject/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="editproject/vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="editproject/vendor/select2/select2.min.css">
	<!--===============================================================================================-->	
		<link rel="stylesheet" type="text/css" href="editproject/vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="editproject/css/util.css">
	<link rel="stylesheet" type="text/css" href="editproject/css/main.css">
   </head>

   <body>
      <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/ncp"
         user = "root"  password = ""/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from project where id=3;
      </sql:query>
 
      <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
				<form class="login100-form validate-form flex-sb flex-w" action="editproj" method="post">
				<c:forEach var = "row" items = "${result.rows}">
					<span class="login100-form-title p-b-32">
						EDIT PROJECT
					</span>

					<span class="txt1 p-b-11">
						NAME
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Name is required">
						<input class="input100" type="text" value="${row.developer}" name="developer" >
						<span class="focus-input100"></span>
					</div>
					
					<span class="txt1 p-b-11">
						Title
					</span>
					
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Title is required">
						<input class="input100" type="text" value="${row.title}" name="TITLE" >
						<span class="focus-input100"></span>
					</div>
					
					<span class="txt1 p-b-11">
						STATUS
					</span>
					<c:choose>
					    <c:when test="${row.status=='1'}">
					        <div class="wrap-input100 validate-input m-b-36" data-validate = "STATUS is required"><br>
								<label for="Finish"> Finish <input type="radio"  id="Finish" name="Status" value="true"  checked/></label><br>
								<label for="In Process"> In Process <input type="radio" id="In Process" name="Status" value="false">  </label><br>
								<span class="focus-input100"></span>
							</div>
					    </c:when>    
					    <c:otherwise>
					       <div class="wrap-input100 validate-input m-b-36" data-validate = "STATUS is required"><br>
								<label for="Finish"> Finish <input type="radio"  id="Finish" name="Status" value="true"  /></label><br>
								<label for="In Process"> In Process <input type="radio" id="In Process" name="Status" value="false" checked>  </label><br>
								<span class="focus-input100"></span>
							</div>
					    </c:otherwise>
					</c:choose>
					
					<span class="txt1 p-b-11">
						YEAR
					</span>
					<div class="wrap-input100 validate-input m-b-36" data-validate = "Year is required">
						<input class="input100" type="charset" value="${row.date}" name="YEAR" >
						<span class="focus-input100"></span>
					</div>
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							DONE
						</button>
					</div>
					</c:forEach>
				</form>
			</div>
		</div>
	</div>
 
   </body>
</html>