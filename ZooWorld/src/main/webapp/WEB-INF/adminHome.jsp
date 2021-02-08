<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Zoo World</title>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
 <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
 <link rel="stylesheet" type="text/css" href="css/home.css">
</head>

<body>
<form:form action="" method="POST">
<section id="title">
  <h2 class="text-center"> Welcome ${user.firstName }</h2>
  <marquee behavior ="scroll" direction="left"><h4 class="text-center">We are open Monday-Sunday form 8am-5pm EST. All visitors ages 3 and up require a ticket or membership and reservation.</h4></marquee>
<nav class = "navbar navbar-expand-lg navbar-light">

   <a class="nav-brand" href=""><img src="pictures/pic_10.PNG" alt="" width="150" height="80"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
   <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
	<ul class="navbar-nav ml-auto">
		<li class="nav-item">
			 <a class= "nav-link text-secondary" href = "/adminhome">Home</a>
		 </li>
		 <li class="nav-item">
			 <a class= "nav-link text-secondary" href = "/exhibits/admin">Update Exhibits</a>
		 </li>
		 <li class="nav-item">
			 <a class= "nav-link text-secondary" href = "/logout">Logout</a>
		 </li> 
	</ul>
	</div>
</nav>

</section>


<section class ="background">
<img alt="" src="pictures/background_image.PNG" width="1500" height="900">
</section>



<section>
    <div class="slidershow middle">

      <div class="slides">
        <input type="radio" name="r" id="r1" checked>
        <input type="radio" name="r" id="r2">
        <input type="radio" name="r" id="r3">
        <input type="radio" name="r" id="r4">
        <input type="radio" name="r" id="r5">
        <div class="slide s1">
          <img src="pictures/pic_1.PNG" alt="">
        </div>
        <div class="slide">
          <img src="pictures/pict_2.PNG" alt="">
        </div>
        <div class="slide">
          <img src="pictures/pic_6.jpg" alt="">
        </div>
        <div class="slide">
          <img src="pictures/pic_4.PNG" alt="">
        </div>
        <div class="slide">
          <img src="pictures/pic_5.jpg" alt="">
        </div>
      </div>

      <div class="navigation">
        <label for="r1" class="bar"></label>
        <label for="r2" class="bar"></label>
        <label for="r3" class="bar"></label>
        <label for="r4" class="bar"></label>
        <label for="r5" class="bar"></label>
      </div>
    </div>
  </section>



<section class ="member">
<div class ="message">
	<h2> Annual Membership Privileges</h2>
	<div>
	<ul>
	<li><b>Unlimited daytime admission* to the Palm Beach Zoo and Conservation Society throughout the year for all of those who qualify under your membership.</b></li>
	<li><b>10% discount in the Zoo gift shops and concessions areas including the Tropics Cafe.</b></li>
	<li><b>Invitations to Members Only events and exhibit openings.</b></li>
	<li><b>Opportunities to assist and support the Palm Beach Zoo in worldwide and local conservation efforts</b></li>
	</ul>
	</div>
</div>
</section>





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


</form:form>


</body>
</html>