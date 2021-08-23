<!DOCTYPE html>
<html>
<head>
	<title>Login Page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous">
</script>
<style type="text/css">
	#login{
		text-align: center;
		border: 1px solid black;
		border-radius: 25pt;
	}


</style>
</head>
<body>
	<form action="login" method="post">
	<br>
	<br>
	<div id="login">
		<h2 style="color: red;">Login Page</h2>
		<br>
		<br>
		<input type="email" name="EMAIL" placeholder="Enter your email id" required="required">
		<br>
		<br>
		<input type="password" name="PASS" placeholder="Enter your password">
		<br><br>
		<a href="Forget Password.jsp">Forgot Password?</a>
		<br>
		<br>
		<input type="submit" id="btn btn-secondary" name="Submit" value="Login">&nbsp&nbsp&nbsp
		<input type="reset" id="btn btn-secondary" name="Reset" value="Cancel">
		<br>
		<br>
		<p>Not Registered ?</p>
		<a href="Home.jsp">Click Here</a>
	</div>
	</form>
</body>
</html>