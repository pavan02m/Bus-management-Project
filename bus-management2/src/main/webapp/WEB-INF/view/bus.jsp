<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<title>Insert title here</title>
<style type="text/css">
	body{
		position: relative;
	}
	.form{
		margin-bottom: 50px;
		margin-top: 30px;
	}
	.bus-table{
		align:center;
	}
	.back{
	margin-right: 9px
	}
	.showcase-area{
	  height: 98vh;
	  background: linear-gradient(rgba(220,220,220,0.50), rgba(215,215,215,0.50)), url("/bus-management2/URLToReachResource/img/bg.jpg");
	  background-size: cover;
	  background-position: center;
	  background-repeat: no-repeat;
	}
	.showcase-cantainer{
	    display: flex;
	    flex-direction: column;
	    height: 100%;
	}
	.add-search{
		display:flex;
		justify-content: space-between;
	}
</style>
</head>
<body>
<div class="showcase-area">
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
<div class="showcase-cantainer">
<div class="add-search form container-sm">
	<form action="addBus" >
		<input type="submit" value="ADD" class="btn btn-primary">
	</form>
	<%-- <form:form action="search" method="GET">
		<input name="keyword" class="form-control"> 
		<input type="submit" value="search" class="btn btn-primary">
	</form:form> --%>
</div>
<div class="container-sm bus-table">	
	<table border="1" class="table table-sm">
	<thead align="center" class="table-dark">
			<tr>
				<td>BUS ID</td>
				<td>BUS NO</td>
				<td>ARRIVAL TIME</td>
				<td>DISPATER TIME</td>
				<td>DRIVER</td>
				<td colspan="2">ACTION</td>
			</tr>
	</thead>
	
	<c:forEach var="bus" items="${buses}" >
	<tr align="center">
		<td class="fw-bolder">${bus.bus_id}</td>
		<td class="fw-bolder">${bus.bus_no}</td>
		<td class="fw-bolder">${bus.arrival_time}</td>
		<td class="fw-bolder">${bus.dispater_time}</td>
		<td class="fw-bolder">${bus.diver}</td>
		<td><a href="updateBus?busID=${bus.bus_id}" class="btn btn-primary">Update</a></td>
		<td><a href="deleteBus?busID=${bus.bus_id}" class="btn btn-danger" onclick="if(!(confirm('Are you sure to delete this data?'))) return false">Delete</a></td>
	</tr>
	</c:forEach>
	
	</table>
	</div>
	</div>
</div>

</body>
</html>