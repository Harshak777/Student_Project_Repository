<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>View Profile</title>
	<meta charset="UTF-8">
	<meta name="description" content="Civic - CV Resume">
	<meta name="keywords" content="resume, civic, onepage, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->   
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Josefin+Sans:400,400i,600,600i,700" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="profile/css/bootstrap.min.css"/>

	<link rel="stylesheet" href="profile/css/style.css"/>

</head>
<body>
	<header>
	 <sql:setDataSource var = "snapshot" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/ncp"
         user = "root"  password = ""/>
 
      <sql:query dataSource = "${snapshot}" var = "result">
         SELECT * from user where username="raghul";
      </sql:query>
      
        <div class="navb">
			<a id="link" href="../land/index.html">SC</a>
			<div class="dd" style="float: right;">
			  <button class="db">Raghul
				<i class="fa fa-caret-down"></i>
			  </button>
			  <div class="dd-content">
		
				
				<a id="link" href="uprojects.html">My Projects</a>
				<a id="link" href="editp/edit2.html">Edit Profile</a>
				<a id="link" href="../land/index.html">Log Out</a>
			  </div>
			</div>
			<div class="dd" style="float: right;">
			<a style="float: right;" id="link" href="../gmd/index.html">About Us</a>
				  <a style="float: right;" id="link" href="tables.html">Projects</a>
		  </div>
    </header>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>
	
	<div class="home-six-style">
		
 <c:forEach var = "row" items = "${result.rows}">
		<!-- Hero section start -->
		<section class="hero-section">
			<div class="container-fluid text-center" style="background-color: #009fff;">
				<img src="img/hero-3.jpg" alt="">
				<div class="hero-text">
					<h2> ${row.username}</h2>
					<p> ${row.description}</p>
				</div>
				<div class="social-links">
					
					<a href=""><i class="fa fa-instagram"></i></a>
					<a href=""><i class="fa fa-facebook"></i></a>
					<a href=""><i class="fa fa-twitter"></i></a>
				</div>
			</div>
		</section>
		<!-- Hero section end -->

		<!-- Info section start -->
		<div class="info-section">
			<div class="container-fluid">
				<div class="row">
					<div class="col-xl-8 offset-xl-2 container-warp">
						<div class="row">
							<div class="col-md-6">
								<div class="hero-info mb-4 mb-md-0">
									<ul>
										<li><span>Date of Birth</span> ${row.dob}</li>
										<li><span>Address</span> ${row.address}</li>
										<li><span>College</span> ${row.insti}</li>
									</ul>
								</div>
							</div>
							<div class="col-md-6">
								<div class="hero-info">
									<ul>
										<li><span>E-mail</span> ${row.email}</li>
										<li><span>Phone </span> ${row.phno}</li>
									</ul>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Info section end -->
 </c:forEach>
		

		

	<!-- Footer section start -->
	<footer>
        <div class="small text-center text-muted">Copyright © <script>document.write(new Date().getFullYear())</script> - Student Corner</div>
    </footer>
	<!-- Footer section end -->

		

	<!--====== Javascripts & Jquery ======-->
	<script src="profile/js/jquery-2.1.4.min.js"></script>
	<script src="profile/js/bootstrap.min.js"></script>
	
	<script src="profile/js/main.js"></script>
</body>
</html>