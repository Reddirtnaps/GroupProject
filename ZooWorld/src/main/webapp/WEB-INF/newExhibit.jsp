<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>Make a Exhibit</title>
</head>
<body>
	<div class="container">
		<h3>Create a new animal exhibit</h3>
			<c:forEach items="${errors}" var="error">
				<p>${error}</p>
			</c:forEach>
			<hr>
			<form:form method="POST" action="/exhibits/new" modelAttribute="exhibit">
				<div class="form-group">
					<form:label path="animals"> Animals Featured: 
					<form:errors path="animals"/>
					<form:input path="animals"/>
					</form:label>
				</div>
				<div class="form-group">
					<form:label path="description"> Description: 
					<form:errors path="description"/>
					<form:input path="description"/>
					</form:label>
				</div>
				<div class="form-group">
					<form:label path="zooKeeper"> Zoo Keeper: 
					<form:errors path="zooKeeper"/>
					<form:input path="zooKeeper"/>
					</form:label>
				</div>			
			<button class="btn btn-dark">Create this exhibit</button>
		</form:form>
		<hr>
	</div>
</body>
</html>