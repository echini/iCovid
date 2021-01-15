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
	
	
	
	<!--  If user is logged in hide the register panel-->
	<c:if test='${not empty loguser}'>

			<div class="button nameuser">Logged as, ${sessionScope.loguser.name}</div>
		
		<a href='${pageContext.request.contextPath}/logout' class="nav-link"> Logout</a>
		
			<h1 style="float: center;">You're already registered, ${sessionScope.loguser.name} !</h1>

	</c:if>
	
	
	<!--  If user is not logged in -->

	<c:if test='${empty loguser}'>
	
	<div id="register">
	<div class="container-fluid">
	<div class="row">
	
	<form action="registerServlet" method="post">
		<h3> Register Account </h3>
		<div class="form-group">
			<input type="text" name="name" class="form-control" placeholder="Enter your name here...">
		</div>
	
		<div class="form-group">
			<input type="email" name="email" class="form-control"  placeholder="Enter your email here...">
		</div>
	
		 	<input type="hidden" name="lat" id="lat" value="">
		 	<input type="hidden" name="lng" id="lng" value="">
		 	
		 <button type="submit" class="btn"> <i class="fas fa-sign-in-alt"></i> Register</button>
		 <br><br>
		 <a href="login.jsp">Already have an account?</a>
	</form>
	</div>
		<button id="modalBtn" class="button"> Check Terms of Use</button>
		 <div id="simpleModal" class="modal">
		 	<div class="modal-content">
		 		<span class="closeBtn" > &times; </span>
		 			<h1 class="header">Terms of Use</h1>
		 			<p class="welcome">Welcome to iCovid!</p>
					<p>These terms govern your use of iCovid once you are registered.<br>When you create your account you must agree and accept the following terms:</p>
					<p>	<br>  <b>-> </b>Although our test results are grounded on research and analysis of the available 
					data from reliable resources,they cannot ,in anyway,replace an official diagnostic process from your doctor. </p>
					<p>	<br>  <b>-></b> In order for us to offer you the complete experience of iCovid,we will be using your IP address to estimate your current location. </p>
					<p>	<br> <b> -></b> iCovid has been created exclusively for our university's purposes.</p>
		 		</div>
		 	</div>
	</div>
	</div>
	
	</c:if>
	
	<!--footer-->	
	<footer class="container-fluid text center">
				<h3>Contact us</h3>
				<a href="#" class="fas fa-phone-alt"></a>
				<a href="#" class="fab fa-facebook"> </a>
				<a href="#" class="fab fa-linkedin-in"> </a>
				<a href="#" class="fas fa-envelope"></a>
				<a href="#" class="fab fa-twitter"></a>
	</footer>
	
	<script > 
		   //Get modal element
		var modal=document.getElementById("simpleModal");
		
		//Get open modal button
		var modalBtn=document.getElementById("modalBtn");
		
		//Get close button
		var closeBtn=document.getElementsByClassName("closeBtn")[0];
		
		//Listen for click
		//modalBtn.addEventListener("click",openModal);
		
		//Listen for close click
		//closeBtn.addEventListener("click",closeModal);
		modalBtn.onclick=function(){
			modal.style.display="block";
		}
		
		closeBtn.onclick=function(){
			modal.style.display="none";
		}
		
		
		//Function to close modal if outsideclick
		window.onclick=function(e){
			if(e.target==modal){
				modal.style.display="none";
			}
		}
</script>   

		
   
   </body>
 </html>