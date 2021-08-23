<!DOCTYPE html>
<html>
<head>
	<title>Password Recovery</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous"></script>
<style>
	
	#pass{
		text-align: center;
	}

</style>
</head>
<body id="pass">
	<br>
	<br>
	<form action="RecoverPassword" method="post">
<div class="container">
<H1>Recover your Password</H1>
<br>
<br>
<div>
	<label>Email Id :&nbsp</label>
	<input type="Email" name="Email" placeholder="Enter your email id" style="border-radius: 5pt;" />
</div>
<br>
<br>
<br>
<br>
<div>
	<input type="submit" class="btn btn-primary"  value="Submit">&nbsp&nbsp&nbsp&nbsp&nbsp
	<input  type="reset" class = "btn btn-primary"  value="Cancel">
</div>
</div>
</form>
</body>
</html>