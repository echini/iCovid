<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	
	 <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="styleNew.css"/>
    <title>register form</title>
  </head>
 
  <body>

    <!-- Optional JavaScript; choose one of the two! -->
 <script src="http://maps.google.com/maps?file=api&v=2&key=AIzaSyCUSw9OONExtOp4ubTxBR-kC1eswnot3mc" type="text/javascript"></script>
	 
	 
    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/de5d6b149f.js" crossorigin="anonymous"></script>
   
   <!--navigation bar-->
	<nav class="navbar navbar-expand-md navbar-fixed-top navbar-light bg-light sticky-top" role="navigation">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><img src="img/logo.png"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
		<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
				<a href="index.jsp" class="nav-link"> Home </a>
				</li>
				<li class="nav-item">
				<a href="test.jsp" class="nav-link"> Take the test </a>
				</li>
				<li class="nav-item">
				<a href='${pageContext.request.contextPath}/#about' class="nav-link"> About </a>
				</li>
			</ul>
			<c:if test='${not empty sessionScope.loguser}'> 
	
					<form action="logout" method="get">
						<div class="button nameuser">Logged as, ${sessionScope.loguser.name}</div>
						<a href='${pageContext.request.contextPath}/logout' class="button logout">Logout </a>
					</form>
	
			  	</c:if> 
				<c:if test='${ empty loguser}'>
					<a href="login.jsp" class="signIn-btn"> Sign in</a>
				</c:if>
		</div>
	</div>
	</nav>
	
	 <script>
		if(window.navigator.geolocation){
			x=window.navigator.geolocation.getCurrentPosition(success, failure);
			
			function success(position){
				document.getElementById('lat').value=position.coords.latitude;
				document.getElementById('lng').value=position.coords.longitude;
		
			}
			function failure(){}
		}
    </script>
    
    
	<!--register form-->
	<div id="register">
	<div class="container-fluid">
	<div class="row">
	
	<form action="registerServlet" method="post">
		<h3> Your registration failed. Please try again </h3>
		<div class="form-group">
			<input type="text" name="name" class="form-control" placeholder="Enter your name here...">
		</div>
	
		<div class="form-group">
			<input type="email" name="email" class="form-control"  placeholder="Enter your email here...">
		</div>
		<input type="hidden" name="lat" id="lat" value="">
		 	<input type="hidden" name="lng" id="lng" value="">
		 	
		 <div class="form-group form-check">
			<input type="checkbox" class="form-check-input" id="exampleCheck1">
			<label class="form-check-label" for="exampleCheck1">I agree with the <b>Terms of Use</b></label>
		 </div>
		
		 <button type="submit" class="btn"> <i class="fas fa-sign-in-alt"></i> Register</button>
		 <br><br>
		 <a href="login.jsp">Already have an account?</a>
	</form>
	</div>
	</div>
	</div>
	
	
	<!--footer-->	
	<footer class="container-fluid text center">
				<h3>Contact us</h3>
				<a href="#" class="fas fa-phone-alt"></a>
				<a href="#" class="fab fa-facebook"> </a>
				<a href="#" class="fab fa-linkedin-in"> </a>
				<a href="#" class="fas fa-envelope"></a>
				<a href="#" class="fab fa-twitter"></a>
	</footer>	
   
   </body>
 </html>