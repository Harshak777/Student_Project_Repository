<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% session = request.getSession(false);
String ema = (String) session.getAttribute("exist");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Forget Password</title>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
    crossorigin="anonymous">
  <link rel="stylesheet" href="forget/style.css">
</head>
<body>
  <header>
    <ul>
        <li><a href="#home">SC</a></li>
        <li style="float:right"><a>Login</a></li>
        <li style="float:right"><a href="#contact">Contact</a></li>
        <li style="float:right"><a href="#about">About</a></li>
    </ul>
  </header>
  <div class="container">
    <div class="lock">
      <i class="fa fa-lock fa-4x"></i>
      <h2 class="text-center">Forgot Password?</h2>
      <p>You can reset your password here.</p>
    </div>
    <form action="checkEmail" onsubmit="return validEmail();" method="POST">
      <div class="env">
        <span class="i-class"><i class="fa fa-envelope" aria-hidden="true"></i></span>
        <input id="email" type="email" name="email" placeholder="Enter Your Email Id">
      </div>
      <button class="button button1">Reset Your Password</button>
    </form>
    <%
    if(ema != null && ema.equals("yes"))
    {
    	%>
    	<h3>An email has been sent for password reset</h3>
    	<%
    	session.removeAttribute("exist");
    }
    %>
    <%
    if(ema != null && ema.equals("no"))
    {
    	%>
    	<h3>Email doesn't exist</h3>
    	<%
    	session.removeAttribute("exist");
    }
    %>
  </div>
  <footer>
    <div class="small text-center text-muted">Copyright © <script>document.write(new Date().getFullYear())</script> - Student Corner</div>
  </footer>
  <script src="forget/index.js"></script>
</body>
</html>