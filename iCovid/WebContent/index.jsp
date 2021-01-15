<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<link
	href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="styleNew.css" />

<title>iCovid</title>
</head>

<body>

	<!-- Optional JavaScript; choose one of the two! -->

	<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/de5d6b149f.js"
		crossorigin="anonymous"></script>


	<!--navigation bar-->
	<nav
		class="navbar navbar-expand-md navbar-fixed-top navbar-light bg-light sticky-top"
		role="navigation">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"><img src="img/logo.png"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a href="index.jsp" class="nav-link">
							Home </a></li>
					
					<!--  If user is logged in hide the register panel-->
					<c:if test='${not empty loguser}'>
							<a href="test.jsp"
							class="nav-link"> Take the test </a>
						
					</c:if>
					<c:if test='${ empty loguser}'>	
							<a href="registration.jsp"
							class="nav-link"> Take the test </a>
					</c:if>
					
					<li class="nav-item"><a href="#about" class="nav-link">
							About </a></li>
					
				</ul>
				
				<c:if test='${not empty sessionScope.loguser}'> 
	
					<form action="logoutServlet" method="get">
						<div class="button nameuser">Logged as, ${sessionScope.loguser.name}</div>
						<a href='${pageContext.request.contextPath}/logoutServlet' class="button logout">Logout </a>
					</form>
	
			  	</c:if> 
				<c:if test='${ empty loguser}'>
					<a href="login.jsp" class="signIn-btn"> Sign in</a>
				</c:if>
			</div>
		</div>
	</nav>

	  
	

	<!-------------------------------HOME---------------------------------------->
	<section id="home">
		<div class="container">
		<div class="landing-text">
			<h1>
				Stay safe.<br> Protect each other.
			</h1>
			<h3>
				Evaluate the risk of having been infected <br>by covid-19 and
				get advice on what to do<br> to protect yourself and others.
			</h3>
			<c:if test='${not empty sessionScope.loguser}'>
				<a href="test.jsp" class="btn btn-outline-light btn-lg">
					Get started</a> 
			</c:if>
			<c:if test='${empty sessionScope.loguser}'>
				<a href="registration.jsp" class="btn btn-outline-light btn-lg">Get started</a>
			</c:if>
			<a href="#about" class="btn btn-outline-light btn-lg">
				More info</a>
		</div>
	</div>
	</section>
	
	<!-- ------------------------------ABOUT------------------------------------ -->
	<section id="about">
	<div class="container">
	
	<div class="row">
	<div class="col">
		<img src="img/about1.jpg" class="about-img">
	</div>
	<div class="col">
		 <h1 class="display-R">The Idea</h1>
         <h3 class="infoR">iCOVID is a medical digital evaluation platform. The application promotes safe and accessible risk assessment of the SARS-CoV-2 virus disease, also known as coronavirus. The risk assessment is based on the user's symptoms, their immune system vulnerability and their possible exposure history to the virus. After thorough research and analysis of the available data and datasets from reliable sources, such as the NPHO and the World Health Organization, we've built the test, on which the application is based.</h3>
	</div>
	</div>
	
	<div class="row">
	<div class="col">
		<h1 class="display-L">The Goal</h1>
        <h3 class="infoL">The application was designed to raise awareness and advise citizens to act precautionary and responsibly in times of pandemic for the safety of themselves and their fellow citizens. The idea is to provide an application to the citizens that allows them to evaluate the risk they have of having the infamous COVID-19. The users should strictly be older than 18 years old.</h3>
	</div>
	<div class="col">
		<img src="img/about2.jpg" class="about-img">
	</div>
	</div>
	
	<div class="row">
	<div class="col">
		<img src="img/about3.jpg" class="about-img">
	</div>
	<div class="col">
		<h1 class="display-R">How It's Done</h1>
        <h3 class="infoR">The risk assessment is carried out through a series of questions. The final results displayed, represent statistical probabilities and not a medical diagnosis. This application is not a substitute for professional medical advice, diagnosis, treatment or urgent intervention or transmission of critical time data. The development of this software was based on the framework set by the World Health Organization (WHO) and the National Public Health Organization(NPHO).</h3>
	</div>
	</div>
	
	<div class="row">
	<div class="col">
		<h1 class="display-L">Reminder</h1>
        <h3 class="infoL">Coronavirus disease 2019 (COVID-19) symptoms can vary widely. Some people have no symptoms at all while others become so sick they eventually need mechanical assistance to breathe. Keeping that in mind, this application was created for research and not for diagnostic purposes. Protect yourself; be informed; prevent unnecessary risk.</h3>
	</div>
	<div class="col">
		<img src="img/about4.jpg" class="about-img">
	</div>
	</div>
    
    </div>
    
	</section>
	
	<!-- ------------------------------MAP------------------------------------ -->
	
	<section id="mapCanvas">
	<div class="container">
	<div class="row">
	<div class="col">
		<h3>Live Map of Covid-19 cases</h3>
		<p>Stay informed about the latest "possible" covid-19 cases in your area with our live map and protect your self and others. </p>
		<form action="mapServlet" method="get">
			<a href='${pageContext.request.contextPath}/mapServlet' class="button-map">Discover our map here</a>
		</form>
	</div>
	<div class="col">
			<img src="img/map-img.jpg" class="map-img">
	</div>
	</div>
	</div>
	</section>
	
	

	<!--footer-->
	<footer class="container-fluid text center">
		<h3>Contact us</h3>
		<a href="#" class="fas fa-phone-alt"></a> <a href="#"
			class="fab fa-facebook"> </a> <a href="#" class="fab fa-linkedin-in">
		</a> <a href="#" class="fas fa-envelope"></a> <a href="#"
			class="fab fa-twitter"></a>
	</footer>

</body>
</html>