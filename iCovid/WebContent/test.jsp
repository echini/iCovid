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
    <title>test form</title>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        
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
		<a class="navbar-brand" href='${pageContext.request.contextPath}'><img src="img/logo.png"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
		<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item">
				<a href='${pageContext.request.contextPath}' class="nav-link"> Home </a>
				</li>
				<li class="nav-item">
				<a href='${pageContext.request.contextPath}/takeTest' class="nav-link"> Take the test </a>
				</li>
				<li class="nav-item">
				<a href='${pageContext.request.contextPath}#about' class="nav-link"> About </a>
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
	
	
	<!--test form-->
	<div id="test">
	<div class="container-fluid">
	<form action="testServlet" method="post">

	
	<div class="question">
	 	<h3>Question 1</h3>
	 	<div class="form-group">
	 	 
	 	<p>Select your gender</p>
         <table>
            <tr>
               <td><input type="checkbox" name="gender" value="male"/>Male</td>
            </tr>
            <tr>
               <td><input type="checkbox" name="gender" value="female"/>Female</td>
            </tr>
            <tr>
               <td><input type="checkbox" name="gender" value="Other"/>Other</td>
            </tr>
         </table>
         </div>
      </div>
		
	
	<div class="question">
	 	<h3>Question 2</h3>
	 	<div class="form-group">
	 	<p>Select your age</p>
         <table>
            <tr>
               <td><input type="checkbox" name="age"  value="18-34"/>18-34</td>
            </tr>
            <tr>
               <td><input type="checkbox" name="age"  value="35-50"/>35-50</td>
            </tr>
            <tr>
               <td><input type="checkbox" name="age" value="51-65"/>51-65</td>
            </tr>
             <tr>
               <td><input type="checkbox" name="age"  value="66-79"/>66-79</td>
            </tr>
            <tr>
               <td><input type="checkbox" name="age"  value="80+"/>80+</td>
            </tr>
         </table>
         </div>
      </div>
      
		<div class="question">
	 	<h3>Question 3</h3>
	 	<div class="form-group">
	 	<p>Select your latest temperature</p>
         <table>
            <tr>
               <td><input type="checkbox" name="temp" value="35.5°C - 37°C"/>35.5°C - 37°C</td>
            </tr>
            <tr>
               <td><input type="checkbox" name="temp" value="37.1°C - 37.9°C"/>37.1°C - 37.9°C</td>
            </tr>
            <tr>
               <td><input type="checkbox" name="temp" value="38°C - 38.5°C"/>38°C - 38.5°C</td>
            </tr>
             <tr>
               <td><input type="checkbox" name="temp" value="38.6°C +"/>38.6°C +</td>
            </tr>
         </table>
         </div>
      </div>
	
		
		
	<div class="question">
		<h3>Question 4</h3>
		<p>Do you have dry cough?</p>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="drycough" value="yes">
			<label class="form-check-label" for="inlineCheckbox1">Yes</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="drycough" value="no">
			<label class="form-check-label" for="inlineCheckbox2">No</label>
		</div>
	</div>
	
	
	<div class="question">
		<h3>Question 5</h3>
		<p>Do you have any difficulty in breathing?</p>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="breathing" value="yes">
			<label class="form-check-label" for="inlineCheckbox1">Yes</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="breathing" value="no">
			<label class="form-check-label" for="inlineCheckbox2">No</label>
		</div>
	</div>
	
	<div class="question">
		<h3>Question 6</h3>
		<p>Are you experiencing any loss of smell or taste?</p>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="smelltaste" value="yes">
			<label class="form-check-label" for="inlineCheckbox1">Yes</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="smelltaste" value="no">
			<label class="form-check-label" for="inlineCheckbox2">No</label>
		</div>
	</div>
	
	<div class="question">
		<h3>Question 7</h3>
		<p>Are you feeling exhausted?</p>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="exhausted" value="yes">
			<label class="form-check-label" for="inlineCheckbox1">Yes</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="exhausted" value="no">
			<label class="form-check-label" for="inlineCheckbox2">No</label>
		</div>
	</div>
	
	<div class="question">
		<h3>Question 8</h3>
		<p>Are you experiencing any of the following symptoms?</p>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="question8" value="sorethroat">
			<label class="form-check-label" for="inlineCheckbox1">Sore throat</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="question8" value="headache">
			<label class="form-check-label" for="inlineCheckbox2">Headache</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="question8" value="diarrhea">
			<label class="form-check-label" for="inlineCheckbox2">Diarrhea</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="question8" value="none">
			<label class="form-check-label" for="inlineCheckbox2">None</label>
		</div>
	</div>
	
	<div class="question">
		<h3>Question 9</h3>
		<p>Have you recently been in contact with a confirmed case of covid-19?</p>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="confirmedcase" value="yes">
			<label class="form-check-label" for="inlineCheckbox1">Yes</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="confirmedcase" value="no">
			<label class="form-check-label" for="inlineCheckbox2">No</label>
		</div>
	</div>
	
	<div class="question">
		<h3>Question 10</h3>
		<p>Do you belong to vulnerable groups?</p>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="vulnerability" value="yes">
			<label class="form-check-label" for="inlineCheckbox1">Yes</label>
		</div>
		<div class="form-check form-check-inline">
			<input class="form-check-input" type="checkbox" name="vulnerability" value="no">
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