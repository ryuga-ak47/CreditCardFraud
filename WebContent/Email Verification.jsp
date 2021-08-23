<!DOCTYPE html>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Transport"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.util.Random"%>
<html>
<head>
	<title>Email Verification</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/css/bootstrap.min.css" integrity="sha384-VCmXjywReHh4PwowAiWNagnWcLhlEJLA5buUprzK8rxFgeH0kww/aWY76TfkUoSX" crossorigin="anonymous">

<!-- JS, Popper.js, and jQuery -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js" integrity="sha384-XEerZL0cuoUbHE4nZReLT7nx9gQrQreJekYhJD9WNWhH8nEW+0c5qq7aIo2Wl30J" crossorigin="anonymous">
</script>
<style type="text/css">
	#otp{
		text-align: center;
		border: 1pt solid black;
		height: 240pt;
		width: 40%;
		border-radius: 10pt;
	}
</style>
</head>
<body>
<%
int OTP = 0;
		try{
			//Mail sending process
			String to = request.getParameter("Email");
				
				String from ="luciferdelgado12041998@gmail.com";
				final String username = "lucifer delgado";
				final String passwordd = "9653403415";
				Random rand = new Random();
				int OTPP = rand.nextInt(9999);
				String host = "smtp.gmail.com";
				
				Properties pros = new Properties();
				//pros.setProperty("mail.smtp.host", host);
				pros.put("mail.smtp.auth", "true");
				pros.put("mail.smtp.starttls.enable", "true");
				pros.put("mail.smtp.host", host);
			    pros.put("mail.smtp.port", "465");
			    pros.put("mail.transport.protocol", "smtp");
			    pros.put("mail.smtp.socketFactory.port", "465");  
			    pros.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");  
			    pros.put("mail.smtp.socketFactory.fallback", "false"); 
//				
			    Session sessions = Session.getInstance(pros, new javax.mail.Authenticator() {
			    	protected PasswordAuthentication getPasswordAuthentication() {
			    		return new PasswordAuthentication(from , passwordd);
			    	}
			    });
			    
			   
			    	Message message = new MimeMessage(sessions);
			    	message.setFrom(new InternetAddress(from));
			    	message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			    	
			    	message.setSubject("Password Recovery");
			    	
			    	message.setContent("<h1>Password for your register email id : "+OTPP+"</h1>","text/html");
			    	
			    	Transport.send(message);
			    	
			    	System.out.println("Mail sent Successfully");
			    	
			   	int PASS = Integer.parseInt(request.getParameter("Otp"));
			  if(PASS == OTPP){
			    	
			   	System.out.println("System");
			   	}			    	
		}
			    catch(Exception e) {
			    	e.printStackTrace();
			    }
			    
			
%>
	<br>
	<br>
	<br>
	<br>
	<form>
<div class="container" id="otp">
	<br>
	<H1>Email Verification</H1>
	<br>
	<input type="password" name="Otp" id="pass" placeholder="Please Enter OTP" required="required">
	<br>
	<input type="checkbox" onclick="Toggle()">&nbsp<label>Show Password</label>
<br>
<a href="#">Resend OTP</a>
<br>
<br>
<br>
<div align="center">
	<input class="btn btn-primary" type="submit" value="OK">&nbsp&nbsp
	<input class="btn btn-secondary" type="reset" value="Cancel"> 
</div>
</div>
</form>

<script type="text/javascript">
	function Toggle(){
		var temp = document.getElementById("pass");
		if(temp.type === "password")
		{
			temp.type = "text";
		}
		else{
			temp.type = "password";
		}
	}
</script>
</body>
</html>