<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
    crossorigin="anonymous">
  
  <link rel="stylesheet" href="css/style.css">
  <title>Sign Up</title>
</head>

<body>
  <header>
    <ul>
        <li><a href="#home">SC</a></li>
        <li class="active" style="float:right"><a>Login</a></li>
        <li style="float:right"><a href="#contact">Contact</a></li>
        <li style="float:right"><a href="#about">About</a></li>
    </ul>
  </header>
  <div class="wrapper">
    <form id="sign_up" action="Signup" class="form-area" onsubmit="return validForm();" method="POST">
      <div class="img">
        <img src="img/sign_up.png" alt="work" width="300" height="300">
        <h2>Come Join the Student Community</h2>
        <div class="log">Already a member? Click <a href="">here</a></div>
      </div>
      <div class="form-details">
        <h1>Sign Up Here</h1>

        <div class="form-in">
          <label for="username"><i class="fa fa-user" aria-hidden="true"></i></label>
          <input type="text" name="username" placeholder="USERNAME">
        </div>

        <div class="form-in">
          <label for="email"><i class="fa fa-envelope" aria-hidden="true"></i></label>
          <input type="email" name="email" placeholder="EMAIL ADDRESS">
        </div>

        <div class="form-in">
          <label for="password"><i class="fa fa-lock" aria-hidden="true"></i></label>
          <input type="password" name="password" placeholder="PASSWORD">
        </div>

        <div class="form-in">
          <label for="cpassword"><i class="fa fa-unlock-alt" aria-hidden="true"></i></label>
          <input type="password" name="cpassword" placeholder="CONFIRM PASSWORD">
        </div>

        <input type="checkbox" name="terms" id="terms" onchange="activateButton(this)">I Agree <a href="">Terms & Coditions</a>
        
        <button type="submit" id="submit" form="sign_up">Submit</button>
      </div>
    </form>
  </div>
  <footer>
    <div class="small text-center text-muted">Copyright © <script>document.write(new Date().getFullYear())</script> - Student Corner</div>
  </footer>

  <!-- <script src="http://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
    crossorigin="anonymous"></script> -->
  
</body>
</html>