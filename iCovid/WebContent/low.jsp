<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
	 <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css
" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	
	 <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap
" rel="stylesheet">
	<link rel="stylesheet" href="styleNew.css"/>
    <title>Your Results</title>
</head>
<body>
	 <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js
" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js
" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/de5d6b149f.js
" crossorigin="anonymous"></script>
   
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
				<!--  If user is logged in hide the register panel-->
					<c:if test='${not empty loguser}'>
							<a href="test.jsp"
							class="nav-link"> Take the test </a>
						
					</c:if>
					<c:if test='${ empty loguser}'>	
							<a href="registration.jsp"
							class="nav-link"> Take the test </a>
					</c:if>
				</li>
				<li class="nav-item">
				<a href="about.jsp" class="nav-link"> About </a>
				</li>
			</ul>
		</div>
	</div>
	</nav>
	

   <!--low-->
	<div id="low">
		<div class="low">
			<h1>Low Risk Level </h1>
			<h3>Based on your symptoms and your exposure to the virus history, the risk that you are infected from  COVID-19 is LOW. There is na reason to panic.<br><br>For everyone's safety and health follow the instructions provided for the general population.</h3>
			<a href="#" class="btn btn-outline-light btn-lg"> Instructions </a>
			<a href="test.jsp" class="btn btn-outline-light btn-lg"> Retake </a>
			<a href="mapServlet" class="btn btn-outline-light btn-lg"> Map </a>
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