<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="/bus-management2/URLToReachResource/style/style.css">
</head>
<body>	

		
	<div class="container">
		<div class="forms-container">
		
			<div class="signin-signup">
				<form:form id="loginForm" action="loginprocess" method="POST" class="sign-in-form">
					<h2 class="title">Admin login</h2>
					<div class="input-field">
						<i class="fas fa-user"></i> 
						<input type="text" name="username"  placeholder="username" path="username"/>
					</div>
					<div>
						<c:if test="${param.error != null}">
							<i>Invalid login or paaword</i>
						</c:if>
						<c:if test="${param.logout != null}">
							<i>You are successfully logout plzz login agian</i>
						</c:if>
					</div>
					<div class="input-field">
						<i class="fas fa-lock"></i> 
						<input type="password" name="password" placeholder="password" path="password"/>
					</div>
					<input type="submit" value="Login" class="btn solid" />
				</form:form>
				<div style="color: red">${error}</div>
			</div>
		</div>

		<div class="panels-container">
			<div class="panel left-panel">
				<div class="content">
					<h3>New here ?</h3>
					<p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
						Debitis, ex ratione. Aliquid!</p>
						<a href="index">Sign In</a>
				</div>
			</div>
		</div>
	</div>
	<div style="color: red">${error}</div>

</body>
</html>