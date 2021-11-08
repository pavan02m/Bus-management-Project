<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@500&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="/bus-management2/URLToReachResource/style/driver.css">
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
          <a class="nav-link back" aria-current="page" href="busList">Back</a>
        </li>
      </ul>
        <button class="btn btn-outline-success" type="submit">Logout</button>
      </form:form>
    </div>
  </div>
</nav>
</div>
<br>
<h3 >ADD NEW BUS DETAILS </h3>
    <hr>
<div class="form container-sm">
	<form:form action="save-bus" modelAttribute="bus" method="POST" class="row g-3 pt-3 form container-sm">
		<h4>Bus Details</h4>
             <form:hidden  path="bus_id" />
            <div class="col-md-6">
              <label  class="form-label">Bus-No</label>
              <form:input type="text" class="form-control"  path="bus_no"/>
            </div>
            <div class="col-md-6">
              <label  class="form-label">Arrival-Time</label>
              <form:input class="form-control" path="arrival_time"/>
            </div>
            <div class="col-md-6">
              <label  class="form-label">Dispater-Time</label>
              <form:input class="form-control" path="dispater_time"/>
            </div>
          
            <div class="col-md-6">
              <label  class="form-label">Driver</label>
              <form:input type="text" class="form-control" path="diver"/>
            </div>
            <div>
            	<input type="submit" value="Add" class="btn btn-primary">
            </div>
      </form:form>
</div>
</body>
</html>