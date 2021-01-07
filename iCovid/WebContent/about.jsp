<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css
" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	
	 <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap
" rel="stylesheet">
	<link rel="stylesheet" href="style.css"/>
    <title>About</title>
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
				<a href="registration.jsp" class="nav-link"> Take the test </a>
				</li>
				<li class="nav-item">
				<a href="about.jsp" class="nav-link"> About </a>
				</li>
			</ul>
		</div>
	</div>
	</nav>
	

    <!--about-->
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
        </ul>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="img/background.jpg">
                <div class="carousel-caption">
                    <h1 class="display-2">The Idea</h1>
                    <h3>iCOVID is a medical digital evaluation platform. The application promotes safe and accessible risk assessment of the SARS-CoV-2 virus disease, also known as coronavirus. The risk assessment is based on the user's symptoms, their immune system vulnerabity and their possible exposure history to the virus. After thorough research and analysis of the available data and datasets from reliable sources, such as the NPHO and the World Health Organization, we've built the test, on which the application is based.</h3>
                </div>
            </div>
            <div class="carousel-item">
                <img src="img/background2.jpg">
                <div class="carousel-caption">
                <h1 class="display-2">The Goal</h1>
                <h3>The application was designed to raise awareness and advise citizens to act precautionarily and responsibly in times of pandemic for the safety of themselves and their fellow citizens. The idea is to provide an application to the citizens that allows them to evaluate the risk they have of having the infamous COVID-19. The users should strictly be older than 18 years old.</h3>
            </div></div>
            <div class="carousel-item">
                <img src="img/background3.jpg">
                <div class="carousel-caption">
                <h1 class="display-2">How It's Done</h1>
                <h3>The risk assessment is carried out through a series of questions. The final results displayed, represent statistical probabilities and not a medical diagnosis. This application is not a substitute for professional medical advice, diagnosis, treatment or urgent intervention or transmission of critical time data. The development of this software was based on the framework set by the World Health Organization (WHO) and the National Public Health Organization(NPHO).</h3>
            </div></div>
            <div class="carousel-item">
                <img src="img/background4.jpg">
                <div class="carousel-caption">
                    <h1 class="display-2">Reminder</h1>
                    <h3>Coronavirus disease 2019 (COVID-19) symptoms can vary widely. Some people have no symptoms at all while others become so sick they eventually need mechanical assistance to breathe. Keeping that in mind, this application was created for research and not for diagnostic purposes. Protect yourself; be informed; prevent unnecessary risk.</h3>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
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