<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "d" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Insert title here</title>
<style type="text/css">
.back{
	margin-right: 9px
}
</style>
</head>
<body>
<div>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <a class="navbar-brand" href="#">Bus Depo</a>
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link" aria-current="page" href="dashboard">Home</a>
        </li>
      </ul>
      <form:form action="logout" method="POST" class="d-flex" >
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link back" aria-current="page" href="dashboard">Back</a>
        </li>
      </ul>
        <button class="btn btn-outline-success" type="submit">Logout</button>
      </form:form>
    </div>
  </div>
</nav>
</div>
<br>
<br>

	<form action="addDriver" class="form container-fluid">
		<input type="submit" value="ADD" class="btn btn-primary">
	</form>
	
<br>
<br>
<div class="container-fluid">	
	<table border="1" class="table table-light">
	<thead align="center" class="table-dark">
			<tr>
				<td>DRIVER NAME</td>
				<td>LAST NAME</td>
				<td>EMAIL</td>
				<td>ADDRESS</td>
				<td>PIN CODE</td>
				<td>CONTACT NUMBER</td>
				<td>LICENCE NUMBER</td>
				<td>AUTHORITY NUMBER</td>
				<td>EXPIRY DATE</td>
				<td>STATE ISSUED</td>
				<td colspan="2">ACTION</td>
			</tr>
	</thead>
	
	<d:forEach var="driver" items="${drivers}">
		<tr align="center">
			<td>${driver.driver_name}</td>
			<td>${driver.lastname}</td>
			<td>${driver.email}</td>
			<td>${driver.address}</td>
			<td>${driver.pincode}</td>
			<td>${driver.contact_number}</td>
			<td>${driver.licence_number}</td>
			<td>${driver.authority_number}</td>
			<td>${driver.expiry_date}</td>
			<td>${driver.state_issued}</td>
			<td><a href="#" class="btn btn-primary">Update</a></td>
			<td><a href="#" class="btn btn-danger" onclick="if(!(confirm('Are you sure to delete this data?'))) return false">Delete</a></td>
		</tr>
	</d:forEach>
	
	</table>
</div>
</body>
</html>