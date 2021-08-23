<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous"></script>

<style type="text/css">
	
	
	#d2{
		height: 300px;
		background-color: white;
		width: 30%;
		float: left;
		margin-top: 12px;
		margin-left: 4px;
	}
	
	#myCarousel{
		height:300px;
		background-color: grey;
		float: left;
		margin-left: 15pt;
		width: 67%;
		margin-top: 12px;
		
	}
	
	item1{
	
		height:300px;
		background-color: aqua;
		float: left;
		margin-left: 15pt;
		width: 67%;
	}
	#head{
		height: 100px;
		padding-top: 23px;
		
	}
	
	#d1{
		padding-top: 5px;	
		
	}
		#d4{
		height: 280px;
		background-color: #5680e9;
		width: 30%;
		float: left;
		margin-top: 12px;
		margin-left: 4px;
		
	}
	
		#d5{
		height: 280px;
		background-color: #5ab9ea;
		width: 30%;
		float: left;
		margin-top: 12px;
		margin-left: 30px;
		
	}
	
		#d6{
		height: 280px;
		background-color: #84ceeb;
		width: 32%;
		float: left;
		margin-top: 12px;
		margin-left: 25px;
		
	}
	
	
</style>
</head>
<body background="security.jpg">
<strong><header id="head" style="background-color: #55bcc9;">
<h1 style="padding-left: 5px;">Welcome to Nile</h1>
</header>
</strong>

<div id = "d1">
	<marquee behavior="scroll" bgcolor="d9d9ff">This is the most secured website for online transaction speciality in handling credit card fraud detection</marquee>
</div>

<div id = "d2">
	<ul>
	<br>
	<li><a href ="#feedModal" data-toggle="modal" style="text-decoration: underline; padding-left: 5px;">Feedback</a></li>
	<br>
	<li><a href ="#AboutModal" data-toggle="modal" style="text-decoration: underline; padding-left: 5px;">About Us</a></li>
	<br>
	<li><a href ="#RegisterModal" data-toggle="modal" style="text-decoration: underline; padding-left: 5px;">Register</a></li>
	<br>
	<li><a href ="Login Page.jsp" style="text-decoration: underline; padding-left: 5px;">Login</a></li>
	</ul>
</div>
<div id="myCarousel" class="carousel slide" data-ride = "carousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<!-- Wrapper for slides -->
	<div class="carousel-inner">
		<div class="carousel-item active">
			<img alt="Los Angeles" src="BG.jpg" style="height:290px; width: 95%; margin-left: 15pt; margin-top: 5px;">
		</div>
		
		<div class="carousel-item">
			<img alt="Xbox" src="BG-1.jpg" style="height:290px; width: 95%; margin-left: 15pt; margin-top: 5px;">
		</div>
		
		<div class="carousel-item">
			<img alt="PlayStation" src="Slider-3.jpg" style="height:290px; width: 95%; margin-left: 15pt; margin-top: 5px;">
		</div>
		
	</div>
	<!-- Left and right controllers -->
	<a class="carousel-control-prev" href="#myCarousel" data-slide="prev" role="button">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="carousel-control-next" href="#myCarousel" data-slide="next" role="button">
		<span class="carousel-control-next-icon" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
</div>	
<br>
<div id = "d4" style="color: white">As we know nowdays credit card fraud detection system is rapidly increasing</div>

<div id = "d5" style="color: white">As we know nowdays credit card fraud detection system is rapidly increasing</div>

<div id = "d6" style="color: white">As we know nowdays credit card fraud detection system is rapidly increasing</div>
<br>
<br>
<br>
<br>
<div>
<jsp:include page ="Footer.jsp"/>
</div>
<!--MODALS-->
<!-- FEEDBACK -->
<div class ="modal" id="feedModal" role="dialog">
	<div class = "modal-content">
	<div class = "modal-header">
	<div class = "modal-title">
		<h4 align="center" style="display:inline;">Feedback</h4>
		<input type = "submit" id="Closeit" value="&times" data-dismiss = "modal" style="position: absolute; right:0;">
	</div>
	</div>
	<div class="modal-body" style="background-color: white">
	<form action="feedback" method="post">
	<input type = "number" id="ID" name="ID" hidden="true">
	<label>Name</label>
	<input type = "text" id="FullName" name="FullName" placeholder="Enter your name" required="required">
	<br>
	<label>Email</label>
	<input type="email" id="EmailID" name="Email_ID" placeholder="Enter email id">
	<br>
	<label style="position: fixed;">Feedback</label>
	<textarea rows="5" cols="20" id="feedback" name="Feedback" placeholder="Write your feed over here" style="margin-left: 75px;"></textarea>
	<div class="modal-footer">
	<input type="submit" value="Submit" class="btn btn-primary" style="margin-left: 5px;"/>
	<input type = "reset" value="Cancel" class="btn btn-secondary"/>
	</div>
	</form>
	</div>
	</div>
</div>
<!-- ABOUT US -->
<div class ="modal" id="AboutModal" role="dialog">
	<div class = "modal-content">
	<div class = "modal-header">
	<div class = "modal-title">
		<h4 align="center" style="display:inline;">About Us</h4>
		<input type = "submit" id="Closeit" value="&times" data-dismiss = "modal" style="position: absolute; right:0;">
	</div>
	</div>
	<div class="modal-body" style="background-color: white">
	<p>qwertyuioplkjhgfdsazxcqawpldjhfaghrugjnfhfnfdohgoregnoeiwufhowiefuneroifaeoifhrewoignfeoijgvnfdoijgnwioguroig</p>
	</div>
	</div>
</div>
<!-- Registeration Page -->
<div class="modal" id="RegisterModal" role="dialog">
	<div class="modal-content">
	<div class="modal-header">
	<div class="modal-title">
	<h3 align="center" style="color: red; display: inline-block;">Register</h3>
	<input type="submit" id="Closeit" value="Close" class="btn btn-danger" data-dismiss="modal" style="position: absolute; right:0;'"/>
	</div>
	</div>
	<div class="modal-body">
	<form id="myFrom" method="get" action="register">
	<input type = "number" id="ID" name="ID" hidden="true">
	<label>First Name</label>
	<input type="text" name= "FirstName" placeholder="Enter your First Name" id="Fname" required="required" style="margin-left: 10px;"/>
	<br>
	<label>Last Name:</label>
	<input type="text" name= "LastName" placeholder="Enter your Last Name" style="margin-left: 9px;"/>
	<br>
	<label>Email ID:</label>
	<input type="email" name= "EmailID" placeholder="E.g textabc@gmail.com" style="margin-left: 25px;"/>
	<br>
	<label>Contact No:</label>
	<input type="text" name= "Contact" placeholder="Enter your contact number" style="margin-left: 2px;"/>
	<br>
	<label>Password:</label>
	<input type="password" name= "Password" placeholder = "Enter your password" required="required">
	<br>
	<div>
	<input type="submit" value="OK" class="btn btn-primary" style="margin-left: 5px;"/>
	<input type = "reset" value="Cancel" class="btn btn-secondary"/>
	</div>
	</form>
	</div>	
	</div>
</div>
<!-- Login Page -->
<div id="LoginModal" class="modal"  role = "dialog">
<div class = "modal-content" align="center">
<div class = "modal-header">
<div class = "modal-title">
<h4 align="center" style="position: relative;">LOGIN</h4>
</div>
</div>
<div class = "modal-body">
<form action="myForm" method = "get">
	<label>Email Id:</label>
	<input type="email" placeholder = "Enter your mail id" required="required">
	<br>
	<label>Password:</label>
	<input type="password" placeholder = "Enter your password" required="required">
	<br>
	<br>
	<div>
		<input type="submit" value ="Login" class = "btn btn-primary"style="margin-left: 5px;">
		<input type="reset" value = "Cancel" class = "btn btn-secondary">
	</div>
</form>
</div>
<div class="modal-footer">
	<a href= "#" style="align-content: center;">Forgot Password?!</a>
</div>
</div>
</div>
<!--SCRIPTING-->

<script type="text/javascript">
</script>
</body>
</html>