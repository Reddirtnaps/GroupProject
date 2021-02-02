<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Zoo World</title>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<link rel="stylesheet" href="home.css">

</head>

<body>
<form:form action="" method="POST">
<section id="title">
  <h4 class="text-center"> Welcome To Zoo World</h4>
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

</section>


<section>
<img src="" class="rounded mx-auto d-block" alt="">
</section>



<section>
<img src="" class="rounded mx-auto d-block" alt="">
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

<section class = "container-fluid">
<div class="row">
	<div class="col-lg-2">
     <a class="pic" href=""><img src="pictures/pic_1.PNG" alt="" width="200" height="150"></a>
     </div>
     <div class="col-lg-2">
     <a class="pic" href=""><img src="pictures/pict_2.PNG" alt="" width="200" height="150"></a>
     </div>
     <div class="col-lg-2">
     <a class="pic" href=""><img src="pictures/pic_3.PNG" alt="" width="200" height="150"></a>
     </div>
      <div class="col-lg-2">
     <a class="pic" href=""><img src="pictures/pic_4.PNG" alt="" width="200" height="150"></a>
     </div>
       <div class="col-lg-2">
     <a class="pic" href=""><img src="pictures/pic_5.jpg" alt="" width="200" height="150"></a>
     </div>
       <div class="col-lg-2">
     <a class="pic" href=""><img src="pictures/pic_6.jpg" alt="" width="200" height="150"></a>
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