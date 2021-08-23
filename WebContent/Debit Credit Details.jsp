<!DOCTYPE html>
<html>
<head>
	<title>Debit Card</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous">
</script>
<style type="text/css">
	#debit{
		text-align: center;
		border: 1px solid black;
		border-radius: 25pt;
	}


</style>
</head>
<body>
	<form method="post" action="carddetails">
	<br><br>
<div id="debit">
	<h2>Fill the details in fields</h2>
	<br>
	<br>
	<input type = "number" id="ID" name="ID" hidden="true">
	<input type="number" name="Card" placeholder="Enter the card number" required="required" maxlength="12">
	<br><br>
	<input type="number" name="Month" placeholder="MM" maxlength="2" required="required">
	<input type="number" name="Year" placeholder="YYYY" maxlength="4" required="required">
	<input type="password" name="CVV" placeholder="CVV" maxlength="3" required="required">
	<br>
	<br>
	<input type="text" name="NAME" placeholder="Enter your name as mentioned on Card" required="required">
	<br><br><br>
	<input type="submit" class="btn btn-secondary" value="Enter">&nbsp&nbsp
	<input type="reset" class="btn btn-secondary" value="Cancel">
</div>
</form>
</body>
</html>