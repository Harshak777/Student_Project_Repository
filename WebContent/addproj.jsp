<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add Projects</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->  
  <link rel="icon" type="image/png" href="addproj/images/icons/favicon.ico"/>
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="addproj/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="addproj/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="addproj/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="addproj/vendor/animate/animate.css">
<!--===============================================================================================-->  
  <link rel="stylesheet" type="text/css" href="addproj/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="addproj/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="addproj/vendor/select2/select2.min.css">
<!--===============================================================================================-->  
  <link rel="stylesheet" type="text/css" href="addproj/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="addproj/css/util.css">
  <link rel="stylesheet" type="text/css" href="addproj/css/main.css">
   <link rel="stylesheet" href="addproj/cs/style.css"/>
<!--===============================================================================================-->
</head>
<body>
  <header>
        <div class="navb">
      <a id="link" href="../../land/index.html">SC</a>
      <div class="dd" style="float: right;">
        <button class="db">Raghul
        <i class="fa fa-caret-down"></i>
        </button>
        <div class="dd-content">
    
        
        <a id="link" href="../uprojects.html">My Projects</a>
        <a id="link" href="../editp/edit2.html">Edit Profile</a>
        <a id="link" href="../../land/index.html">Log Out</a>
        </div>
      </div>
      <div class="dd" style="float: right;">
      <a style="float: right;" id="link" href="../../gmd/index.html">About Us</a>
          <a style="float: right;" id="link" href="../tables.html">Projects</a>
      </div>
    </header>
  <div class="limiter">
    <div class="container-login100">
      <div class="wrap-login100">
        <div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
          <span class="login100-form-title-1">
            ADD PROJECT
          </span>
        </div>

        <form class="login100-form validate-form" action="addproj" method="POST">
          <div class="wrap-input100 validate-input m-b-26" data-validate="Project Title is required">
            <span class="label-input100">TITLE</span>
            <input class="input100" type="text" name="projectname" placeholder="Enter Your Project Title">
            <span class="focus-input100"></span>
          </div>
          <div class="wrap-input100 validate-input m-b-18" data-validate = "Number is required">
            <span class="label-input100">Description</span>
            <input class="input100" type="text" name="desc" placeholder="Enter the Description">
            <span class="focus-input100"></span>
          </div>
          
          <div class="wrap-input100 validate-input m-b-18" data-validate = "Developer(s) name is required">
            <span class="label-input100">Developer</span>
            <input class="input100" type="TITLE" name="name" placeholder="Enter Developer(s) name">
            <span class="focus-input100"></span>
          </div>
          
          <div class="wrap-input100 validate-input m-b-18" data-validate = "Status of the Project is required">
              <span class="label-input100">STATUS</span>
            <label for="Finish">Finish <input type="radio" id="Finish" name="status" value="Finish"></label>
            <label for="In Process">In Process <input type="radio" id="In Process" name="status" value="In Process">  </label><br>
                        <span class="focus-input100"></span>
          </div>
          
          <div class="wrap-input100 validate-input m-b-18" data-validate = "Year of the Project is required">
            <span class="label-input100">YEAR</span>
            <input class="input100" type="YEAR" name="year" placeholder="Enter Year of the Project">
            <span class="focus-input100"></span>
          </div>

          <div class="container-login100-form-btn">
            <button class="login100-form-btn">
              Submit
            </button>
          </div>
        </form>
      </div>
    </div>
  </div>
  
<!--===============================================================================================-->
  <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/bootstrap/js/popper.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/daterangepicker/moment.min.js"></script>
  <script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
  <script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
  <script src="js/main.js"></script>
 <footer>
        <div class="small text-center text-muted">Copyright © <script>document.write(new Date().getFullYear())</script> - Student Corner</div>
    </footer>
</body>
</html>