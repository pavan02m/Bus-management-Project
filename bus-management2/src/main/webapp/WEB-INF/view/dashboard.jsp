<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"
	integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm"
	crossorigin="anonymous">
<script src="https://code.iconify.design/2/2.0.4/iconify.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="/bus-management2/URLToReachResource/style/style2.css">
<title>Insert title here</title>
</head>
<body>
<div>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
      <a class="navbar-brand" href="#">Bus Depo</a>
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="dashboard">Home</a>
        </li>
      </ul>
      <form:form action="logout" method="POST" class="d-flex" >
        <button class="btn btn-outline-success" type="submit">Logout</button>
      </form:form>
    </div>
  </div>
</nav>
</div>
	<div class="container-fluid row bh">
		<div class="container side col-3">
			<div class="sidename mt-5">
				<h4 class="k ml-4">
					<i class="fas fa-bus-alt mr-3"></i>Company Name
				</h4>
			</div>
			<hr class="hr">

			<div class="sidebar mt-4">
				<a href="#" class="k ml-4"><i class="fas fa-igloo mr-3"></i>Dashboard</a>
			</div>

			<div class="sidebar mt-4">
				<a href="busList" class="k ml-4"><i class="fas fa-bus-alt mr-3"></i>Buses</a>
			</div>

			<div class="sidebar mt-4">
				<a href="#" class="k ml-4"><i class="fas fa-route mr-3"></i>Routes</a>
			</div>

			<div class="sidebar mt-4">
				<a href="driverList" class="k ml-4"><i class="fas fa-user-alt mr-3"></i>Drivers/Conductors</a>
			</div>

			<div class="sidebar mt-4">
				<a href="#" class="k ml-4"><i class="fas fa-users mr-3"></i>Staff</a>
			</div>

			<div class="sidebar mt-4">
				<a href="#" class="k ml-4"><i class="fas fa-user-shield mr-3"></i>Admin</a>
			</div>
		</div>




		<div class="container col-9">
			<div class="row">
				<div class="col-4">
					<div class="card">
						<img src="/bus-management2/URLToReachResource/img/bus.png"
							class="card-img-top" alt="...">
						<div class="card-body">

							<a href="busList" class="btn btn-primary">Buses</a>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div class="card">
						<img src="/bus-management2/URLToReachResource/img/routes.jpeg"
							class="card-img-top" alt="...">
						<div class="card-body">

							<a href="#" class="btn btn-primary">Routes</a>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div class="card">
						<img src="/bus-management2/URLToReachResource/img/drivers.jpeg"
							class="card-img-top" alt="...">
						<div class="card-body">

							<a href="driverList" class="btn btn-primary">Drivers</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-4">
					<div class="card">
						<img src="/bus-management2/URLToReachResource/img/conductor.png"
							class="card-img-top" alt="...">
						<div class="card-body">
							<button class="btn btn-primary">Condutors</button>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div class="card">
						<img src="/bus-management2/URLToReachResource/img/staff.jpg"
							class="card-img-top" alt="...">
						<div class="card-body">
							<a href="#" class="btn btn-primary">Staff</a>
						</div>
					</div>
				</div>
				<div class="col-4">
					<div class="card">
						<img src="/bus-management2/URLToReachResource/img/admin.png"
							class="card-img-top" alt="...">
						<div class="card-body">
							<a href="#" class="btn btn-primary">Admin</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>