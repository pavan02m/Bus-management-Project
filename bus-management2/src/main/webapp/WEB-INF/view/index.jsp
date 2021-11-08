<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/bus-management2/URLToReachResource/style/style.css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap"
	rel="stylesheet">
</head>
<body>

	<div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <form:form action="signin-process" modelattribute="userdto" method="POST" class="sign-in-form">
            <h2 class="title">Sign in</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Username" name="username" path="username" />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" path="password" placeholder="Password" name="password" />
            </div>
            <input type="submit" value="Sign In" class="btn solid" />
            <a href="mylogin">Login</a>
          </form:form>
          
          
          
          <form:form action="#" class="sign-up-form">
            <h2 class="title">Sign up</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Username" name="username" path="username"/>
            </div>
            <!-- <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" placeholder="Email" name="email" path="email"/>
            </div> -->
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" name="password" path="password"/>
              
            </div>
            <input type="submit" class="btn" value="Sign up" />
            <p class="social-text">Or Sign up with social platforms</p>
          </form:form>
          <div>
          </div>
        </div>
      </div>

      <div class="panels-container">
        <div class="panel left-panel">
          <div class="content">
            <h3>New here ?</h3>
            <p>
              Lorem ipsum, dolor sit amet consectetur adipisicing elit. Debitis,
              ex ratione. Aliquid!
            </p>
            <button class="btn transparent" id="sign-up-btn">
              Sign up
            </button>
          </div>
          <img src="/bus-management2/URLToReachResource/img/tarvel2.svg" class="image" alt="" />
        </div>
        <div class="panel right-panel">
          <div class="content">
            <h3>One of us ?</h3>
            <p>
              Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum
              laboriosam ad deleniti.
            </p>
            <button class="btn transparent" id="sign-in-btn">
              Sign in
            </button>
          </div>
          <img src="/bus-management2/URLToReachResource/img/Travel.svg" class="image" alt="" />
        </div>
      </div>
    </div>
	<script>
	const sign_in_btn = document.querySelector("#sign-in-btn");
	const sign_up_btn = document.querySelector("#sign-up-btn");
	const container = document.querySelector(".container");

	sign_up_btn.addEventListener("click", () => {
	  container.classList.add("sign-up-mode");
	});

	sign_in_btn.addEventListener("click", () => {
	  container.classList.remove("sign-up-mode");
	});
  </script>
</body>
</html>