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
          <a class="nav-link back" aria-current="page" href="driverList">Back</a>
        </li>
      </ul>
        <button class="btn btn-outline-success" type="submit">Logout</button>
      </form:form>
    </div>
  </div>
</nav>
</div>
	<a href="#" class="icon"><i class="fas fa-door-open fa-2x pt-2"></i></a>
 
    <h2 >ADMISSION FOR DRIVER'S POST</h2>
    <hr>
    
    <div class="container formbody">
        <h4>Personal Information</h4>

          <form:form action="save-driver" modelAttribute="driver" method="POST" class="row g-3 pt-3">
	          <div class="row">
	            <div class="col pt-3">
	              <form:input path="driver_name" type="text" class="form-control" placeholder="First name" aria-label="First name"/>
	            </div>
	            <div class="col pt-3">
	              <form:input path="lastname" type="text" class="form-control" placeholder="Last name" aria-label="Last name"/>
	            </div>
	          </div>
            <div class="col-md-6">
              <label for="inputEmail4" class="form-label">Email</label>
              <form:input path="email" type="email" class="form-control" id="inputEmail4"/>
            </div>
            <div class="col-md-6">
              <label for="inputAddress" class="form-label">Address</label>
              <form:input path="address" type="text" class="form-control" id="inputAddress" placeholder="1234 Main St"/>
            </div>
            <div class="col-md-4 pb-4">
                <label for="inputZip" class="form-label">Pin Code</label>
                <form:input path="pincode" type="text" class="form-control" id="inputZip"/>
              </div>
              <div class="col-md-4">
                <label for="inputState" class="form-label">Contact No.</label>
                <form:input path="contact_number" type="tel" class="form-control" id="inputTel"/>
              </div>

            <h4>Licence Details</h4>

            <div class="row">
                <div class="col">
                  <form:input path="licence_number" type="text" class="form-control" placeholder="Driver Licence Number" aria-label="Driver Licence Number"/>
                </div>
                <div class="col">
                  <form:input path="authority_number" type="text" class="form-control" placeholder="Driver Authority Number" aria-label="Last name"/>
                </div>
              </div>

              <div class="row">
                <div class="col-md-4 pt-3">
                    <label for="inputDate" class="form-label">Licence Expiry Date</label>
                  <form:input path="expiry_date" type="date" class="form-control" placeholder="Licence Expiry Date" aria-label="Licence Expiry Date"/>
                </div>
                <div class="col-md-4 pt-3">
                    <label for="inputState" class="form-label">State Issued</label>
                    <form:input path="state_issued" type="text" class="form-control"  id="inputState"/>
                  </div>
              </div>
            <div class="col-12">
              <button type="submit" class="btn btn-danger add">ADD</button>
            </div>
          </form:form>
    </div>
</body>
</html>