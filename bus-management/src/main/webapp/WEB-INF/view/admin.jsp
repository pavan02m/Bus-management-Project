<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%-- <h1>DATA COMING SOON</h1>
	
	${buses}
	 --%>
	<%-- <div align="center">
	<table border="1">
	<thead>
			<tr>
				<td>bus_no</td>
				<td>arrival_time</td>
				<td>dispater_time</td>
				<td>driver</td>
			</tr>
	</thead>
	
	<c:forEach var="bus" items="${buses}">
	<tr>
		<td>${bus.bus_no}</td>
		<td>${bus.arrival_time}</td>
		<td>${bus.dispater_time}</td>
		<td>${bus.driver}</td>
	</tr>
	</c:forEach>
	
	</table>
	</div> --%>
	
	<div class="container">
      <div class="forms-container">
        <div class="signin-signup">
          <form action="index" class="sign-in-form">
            <h2 class="title">Admin login</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Username" />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" />
            </div>
            <input type="submit" value="Login" class="btn solid" />
            <!-- <a href=" Click here to Admin Login">Click here to Admin Login</a> -->
          </form>
          <!-- <form action="#" class="sign-up-form">
            <h2 class="title">Sign up</h2>
            <div class="input-field">
              <i class="fas fa-user"></i>
              <input type="text" placeholder="Username" />
            </div>
            <div class="input-field">
              <i class="fas fa-envelope"></i>
              <input type="email" placeholder="Email" />
            </div>
            <div class="input-field">
              <i class="fas fa-lock"></i>
              <input type="password" placeholder="Password" />
            </div>
            <input type="submit" class="btn" value="Sign up" />
            <p class="social-text">Or Sign up with social platforms</p>
            <div class="social-media">
              <a href="#" class="social-icon">
                <i class="fab fa-facebook-f"></i>
              </a>
              <a href="#" class="social-icon">
                <i class="fab fa-twitter"></i>
              </a>
              <a href="#" class="social-icon">
                <i class="fab fa-google"></i>
              </a>
              <a href="#" class="social-icon">
                <i class="fab fa-linkedin-in"></i>
              </a>
            </div>
          </form> -->
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
          <img src="img/admin login.svg" class="image" alt="" />
        </div>
        <!-- <div class="panel right-panel">
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
          <img src="img/Travel.svg" class="image" alt="" />
        </div> -->
      </div>
    </div>
</body>
</html>