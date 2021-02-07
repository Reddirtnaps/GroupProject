<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Login and Registration</title>
</head>
<body>
	<div class="container">
		<h1>Welcome</h1>
		<hr>
		<h3>Welcome ${user.firstName}. Please Login or Register!</h3>	
		<div class="row">
			<div class="col">
				<h3>Register</h3>
				<form:form method="POST" action="/register" modelAttribute="user">
					<div class="form-group">
						<form:label path="firstName"> First Name: 
							<form:errors path="firstName"/>
							<form:input path="firstName"/>
						</form:label>
						<form:label path="lastName"> Last Name: 
							<form:errors path="lastName"/>
							<form:input path="lastName"/>
						</form:label>
						<form:label path="email"> Email:
							<form:errors path="email"/>
							<form:input path="email"/>
						</form:label>
						<form:label path="password"> Password:
							<form:errors path="password"/>
							<form:input type="password" path="password"/>
						</form:label>
						<form:label path="conPassword"> Confirm Password:
							<form:errors path="conPassword"/>
							<form:input type="password" path="conPassword"/>
						</form:label>
						<form:hidden path="isAdmin" value="1"></form:hidden>
					</div>
			<button class="btn btn-dark">Register User</button>
		</form:form>
			</div>
			<div class="row">
				<div class="col">
					<h3>Login</h3>
					<p>${loginError}</p>
					<form method="POST" action="/login">
						<div class="form-group">
							<label>Email: </label>
							<input class="form-control" type="email" name="loginEmail">
						</div>
						<div class="form-group">
							<label>Password: </label>
							<input class="form-control" type="password" name="loginPassword">
						</div>
						<button class="btn btn-primary" type="submit">Login</button>
					</form>
				</div>
			</div>	
		</div>
	</div>
</body>
</html>