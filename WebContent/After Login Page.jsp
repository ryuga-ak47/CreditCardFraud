<html>
<head>
	<title>Standard details</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous">
</script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://www.parsecdn.com/js/parse-1.4.2.min.js"></script>
<style type="text/css">
	body{
		text-align: center;
	}
	#die{
		text-align: center;
		border: 1px solid black;
		border-radius: 20px;
		display: block;
	}
	#b1{
		border-radius: 48%;
	}
	#b2{
		border-radius: 48%;
	}
	#b3{
		border-radius: 48%;
	}
	#b4{
		border-radius: 48%;
	}
	
</style>
</head>
<body>
<input type = "submit" id="Logout" value="Logout" style="position: absolute; right:0;" onClick="window.location = 'Home.jsp'">
	<br>
	<br>
<div id="die">
	<br>
	<input type="button" class="btn btn-secondary" id="b1" onclick="window.location ='Payment Screen.jsp'" value="Make Payment">
	<br>
	<br>
	<input type="button" class="btn btn-secondary" id="b2" onclick="window.location ='Transaction Details.jsp'" value="Transaction Records">
	<br>
	<br>
	<input type="button" class="btn btn-secondary" id="b3" onclick="window.location ='Debit Credit Details.jsp'" value="Add Credit/Debit Cards">
	<br>
	<br>
	<button class="btn btn-secondary" id="b4">Nearby ATM</button>
	<br>
	<br>
</div>
</body>
</html>