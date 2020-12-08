<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Students Corner</title>
    <link rel="stylesheet" href="landing/css/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp"
    crossorigin="anonymous">
</head>
<body>
    <header>
        <ul>
            <li><a class="active" href="#home">SC</a></li>
            <li style="float:right"><a href="login.jsp">Login</a></li>
            <li style="float:right"><a href="#contact">Contact</a></li>
            <li style="float:right"><a href="about.jsp">About</a></li>
        </ul>
    </header>
    <div class="main-body">
        <div class="main">
            <div class="text-area">
                <h1>Welcome to Students Corner</h1>
                <hr class="w2">
                <h2>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Ipsam fuga adipisci sapiente non in maxime, veniam ipsa dolor magnam amet?
                </h2>
                <button class="button button1">Get Started</button>
            </div>
        </div>

        <div class="about-us">
            <div class="a-con">
                <h1>About Us</h1>
                <hr class="w-1">
                <p class="a-u">
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Unde laboriosam dolorum esse illum, excepturi ab dolorem error iusto. Unde nihil vero aperiam atque sint quam nostrum doloribus, nulla necessitatibus ex?
                </p>
                <button class="button button2">Find Out More!</button>
            </div>
            <div class="a-img">
                <img src="landing/img/2522219.jpg" alt="team" width="300" height="300">
            </div>
            
        </div>
    
        <div class="contact">
            <h3>Let's Get In Touch</h3>
            <hr class="w-3">
            <p class="con">
                Ready to use our exuberant Students Corner? Give us a call or send us an email and we will get back to you as soon as possible!
            </p>
            <div class="i-class">
                <div class="phone">
                    <i class="fa fa-phone" aria-hidden="true"></i>
                    <p>+91 xxxxx xxxxx</p>
                </div>
                <div class="mail">
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                    <p><a href="students.corner@gmail.com">students.corner@gmail.com</a></p>
                </div>
            </div>
        </div>
    </div>

    <div class="news">
        <div class="main-news">
            <form id="singular-form" action="Newsletter">
                <button class="shown" type="button" id="subs">Subscribe</button>
                <div id="email-input">
                    <input type="text" placeholder="E-mail" id="email" name="email">
                    <button type="button" class="addbut1" disabled="disabled">Add Me</button>
                </div>
                <div id="success">Congrats!</div>
            </form>
        </div>
    </div>
    
    <footer>
        <div class="small text-center text-muted">Copyright © <script>document.write(new Date().getFullYear())</script> - Student Corner</div>
    </footer>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script  src="landing/js/function.js"></script>
</body>
</html>