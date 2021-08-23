<!DOCTYPE html>
<html>
<head>
	<title>Payment Gateway</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous">
</script>
<style type="text/css">
	#payment{
		text-align: center;
		border: 1px solid black;
		border-radius: 25pt;
	}


</style>
</head>
<body>
	<form>
		<br>
<div id="payment">
	<h3>Select a Payment Option</h3>
<br>
	<input type="button" class="btn btn-secondary" value="Debit Card" style="border-radius: 50%;" onclick = "window.location='Debit and Credit for Payment.jsp'">
	<br><br>
	<input type="button" class="btn btn-secondary" value="Credit Card" style="border-radius: 50%;" onclick = "window.location='Debit and Credit for Payment.jsp'">
	<br>
	<br>
	<input type="button" class="btn btn-secondary" value="Net Banking" style="border-radius: 50%;" onclick = "window.location='Net Banking Page.jsp'">
	<br>
	<br>
	<input type="button" class="btn btn-secondary" value="GPay/UPI" style="border-radius: 50%;" onclick = "window.location='Debit Credit Details.jsp'">
	<br>
	<br>
</div>
</form>
</body>
</html>