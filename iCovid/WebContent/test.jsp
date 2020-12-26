<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	
	 <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="style.css"/>
    <title>test form</title>
  </head>
 
  <body>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/de5d6b149f.js" crossorigin="anonymous"></script>
   
   <!--navigation bar-->
	<nav class="navbar navbar-expand-md navbar-fixed-top navbar-light bg-light sticky-top" role="navigation">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><img src="img/logo.png"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
		<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
				<a href="index.html" class="nav-link"> Home </a>
				</li>
				<li class="nav-item">
				<a href="test.jsp" class="nav-link"> Take the test </a>
				</li>
				<li class="nav-item">
				<a href="about.jsp" class="nav-link"> About </a>
				</li>
			</ul>
		</div>
	</div>
	</nav>
	
	
	<!--test form-->
	<div id="test">
	<div class="container-fluid">
	<div class="question">
	<form>
		<h3>Question 1</h3>
		<div class="form-group">
			<label for="exampleFormControlSelect1">Select your gender</label>
			<select class="form-control" id="exampleFormControlSelect1">
			<option>Male</option>
			<option>Female</option>
			<option>Other</option>
			</select>
		</div>
	</div>
		
	<div class="question">
		<h3>Question 2</h3>
		<div class="form-group">
			<label for="exampleFormControlSelect1">Select your age</label>
			<select class="form-control" id="exampleFormControlSelect1">
			<option>18-34</option>
			<option>35-50</option>
			<option>51-65</option>
			<option>66-79</option>
			<option>80+</option>
			</select>
		</div>
	</div>
	
	
	<div class="question">
		<h3>Question 3</h3>
		<div class="form-group">
			<label for="exampleFormControlSelect1">Select your latest temperature</label>
			<select class="form-control" id="exampleFormControlSelect1">
			<option>35.5°C - 37°C</option>
			<option>37.1°C - 37.9°C</option>
			<option>38°C - 38.5°C</option>
			<option>38.6°C +</option>
			</select>
		</div>
	</div>
		
		
	<div class="question">
		<h3>Question 4</h4>
		<p>Do you have dry cough?</p>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
			<label class="form-check-label" for="inlineCheckbox1">Yes</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
			<label class="form-check-label" for="inlineCheckbox2">No</label>
		</div>
	</div>
	
	
	<div class="question">
		<h3>Question 5</h4>
		<p>Do you have any difficulty in breathing?</p>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
			<label class="form-check-label" for="inlineCheckbox1">Yes</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
			<label class="form-check-label" for="inlineCheckbox2">No</label>
		</div>
	</div>
	
	<div class="question">
		<h3>Question 6</h4>
		<p>Are you experiencing any loss of smell or taste?</p>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
			<label class="form-check-label" for="inlineCheckbox1">Yes</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
			<label class="form-check-label" for="inlineCheckbox2">No</label>
		</div>
	</div>
	
	<div class="question">
		<h3>Question 7</h4>
		<p>Are you feeling exhausted?</p>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
			<label class="form-check-label" for="inlineCheckbox1">Yes</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
			<label class="form-check-label" for="inlineCheckbox2">No</label>
		</div>
	</div>
	
	<div class="question">
		<h3>Question 8</h4>
		<p>Are you experiencing any of the following symptoms?</p>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
			<label class="form-check-label" for="inlineCheckbox1">Sore throat</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
			<label class="form-check-label" for="inlineCheckbox2">Headache</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
			<label class="form-check-label" for="inlineCheckbox2">Runny nose</label>
		</div>
	</div>
	
	<div class="question">
		<h3>Question 9</h4>
		<p>Have you recently been in contact with a confirmed case of covid-19?</p>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
			<label class="form-check-label" for="inlineCheckbox1">Yes</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
			<label class="form-check-label" for="inlineCheckbox2">No</label>
		</div>
	</div>
	
	 <button type="submit" class="btn"> Submit your answers </button>
	
	</form>
	
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