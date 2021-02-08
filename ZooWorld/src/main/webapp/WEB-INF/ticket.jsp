<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://www.paypal.com/sdk/js?client-id=sb&currency=USD" data-sdk-integration-source="button-factory"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
 <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
 <link rel="stylesheet" type="text/css" href="css/home.css">
<title>Buy Tickets</title>
</head>
<body>
<h1 class="text-center">Purchase Your Tickets Here</h1>
	<marquee behavior ="scroll" direction="left"><h4 class="text-center">We are open Monday-Sunday form 8am-5pm EST. All visitors ages 3 and up require a ticket or membership and reservation.</h4></marquee>
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
			 <a class= "nav-link text-secondary" href = "/login">Admin Login</a>
		 </li>
	</ul>
	</div>
</nav>
	<p>Adult tickets are $10 and any child under the age of 12 are $6.</p>
    <p>Please select the amount of tickets you would like to purchase.</p>
    <div class="text-center">
        <label for="adult" >Adult</label>
	    <input  class="adult" name="adult" type="number" min="0" onchange="adultUpdate(this)">
        <label for="child" >Child</label>
        <input class="child" name="child" type="number" min="0" onchange="childUpdate(this)">
    <p id="cartTotal"></p>
	<div id="smart-button-container">
		<div class="text-center" style="text-align: center;">
			<div class="text-center" id="paypal-button-container">
			</div>
		</div>
    </div>
    </div>
    <section class = "sponsors">
<h3> Our Valued Sponsors</h3>
<div class="row">
<div class= "marquee"></div>
	<div class="col-lg-2">
     <a class="pic" href=""><img src="pictures/spon1.PNG" alt="" width="200" height="150"></a>
     </div>
     <div class="col-lg-2">
     <a class="pic" href=""><img src="pictures/spon2.PNG" alt="" width="200" height="150"></a>
     </div>
     <div class="col-lg-2">
     <a class="pic" href=""><img src="pictures/spon3.PNG" alt="" width="200" height="150"></a>
     </div>
      <div class="col-lg-2">
     <a class="pic" href=""><img src="pictures/spon4.PNG" alt="" width="200" height="150"></a>
     </div>
       <div class="col-lg-2">
     <a class="pic" href=""><img src="pictures/spon5.PNG" alt="" width="200" height="150"></a>
     </div>
       <div class="col-lg-2">
     <a class="pic" href=""><img src="pictures/spon6.PNG" alt="" width="200" height="150"></a>
     </div>
</div>

</section>


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
    <script src="payment.js"></script>
</body>
</html>