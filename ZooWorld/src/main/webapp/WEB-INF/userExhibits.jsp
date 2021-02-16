<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Available Exhibits</title>
</head>
<body>
<nav class = "navbar navbar-expand-lg navbar-light">

   <a class="nav-brand" href=""><img src="pictures/pic_10.PNG" alt="" width="150" height="80"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
   <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
	<ul class="navbar-nav ml-auto">
		<li class="nav-item">
			 <a class= "nav-link text-secondary" href = "/home">Home</a>
		 </li>
		 <li class="nav-item">
			 <a class= "nav-link text-secondary" href = "/aboutus">About</a>
		 </li>
		 <li class="nav-item">
			 <a class= "nav-link text-secondary" href = "/buyticket">BuyTickets</a>
		 </li>
		 <li class="nav-item">
			 <a class= "nav-link text-secondary" href = "/adminlogin">Admin Login</a>
		 </li>
	</ul>
	</div>
</nav>
	<div class="container">
		<h1>Available Exhibits</h1>
		<table class="table table-dark">
			<thead>
				<tr>
					<th>#</th>	
					<th>Animal</th>
					<th>Description</th>
					<th>Zoo Keeper</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allExhibits}" var="exhibit">
				<tr>
					<td>${exhibit.id}</td>
					<td>${exhibit.animals}</td>
					<td>${exhibit.description}</td>
					<td>${exhibit.zooKeeper}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>


















