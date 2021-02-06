<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://www.paypal.com/sdk/js?client-id=sb&currency=USD" data-sdk-integration-source="button-factory"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="style.css">
<title>Buy Tickets</title>
</head>
<body>
		<h1 class="text-center">Purchase Your Tickets Here</h1>
<nav class = "navbar navbar-expand-lg navbar-light">
   <a class="nav-brand" href=""><img src="pictures/pic_10.PNG" alt="" width="150" height="80"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
   <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
	<ul class="navbar-nav ml-auto">
		<li class="nav-item">
			 <a class= "nav-link text-secondary" href = "http://localhost:8080/home">Home</a>
		 </li>
		 <li class="nav-item">
			 <a class= "nav-link text-secondary" href = "http://localhost:8080/aboutus">About</a>
		 </li>
		 <li class="nav-item">
			 <a class= "nav-link text-secondary" href = "http://localhost:8080/register">Register</a>
		 </li>
		 <li class="nav-item">
			 <a class= "nav-link text-secondary" href = "http://localhost:8080/login">Login</a>
		 </li>
	</ul>
	</div>
</nav>
	<div class="text-center">
	<p>Adult tickets are $10 and any child under the age of 12 are $6.</p>
    <p>Please select the amount of tickets you would like to purchase.</p>
        <label for="adult" >Adult</label>
	    <input  class="adult" name="adult" type="number" min="0" onchange="adultUpdate(this)">
        <label for="child" >Child</label>
        <input class="child" name="child" type="number" min="0" onchange="childUpdate(this)">   
    <p id="cartTotal"></p>
	<div id="smart-button-container">
		<div style="text-align: center;">
			<div id="paypal-button-container">
			</div>
		</div>
    </div>
    </div>
    <section class="container">
<h5> Zoo World Organization</h5>
<p> ddh@zooworld.org </p>
<div class="icons">
     <a class="center" href=""><img src="pictures/instagram.PNG" alt="" width="20" height="30"></a>
     <a class="center" href=""><img src="pictures/facebook.PNG" alt="" width="20" height="30"></a>
     <a class="center" href=""><img src="pictures/tweeter.PNG" alt="" width="20" height="30"></a>
     <a class="center" href=""><img src="pictures/google.PNG" alt="" width="20" height="30"></a>
</div>

</section>
    <script src="main.js"></script>
</body>
</html>