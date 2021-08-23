

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.Authenticator;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RecoverPassword
 */
@WebServlet("/RecoverPassword")
public class RecoverPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecoverPassword() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url = "jdbc:sqlserver://LAPTOP-6GE41I0O\\SQLEXPRESS;databaseName=CreditCardFraud";
			String user = "CreditCardFraud";
			String password="Password@123";
			
			String email = request.getParameter("Email");
			Connection con = DriverManager.getConnection(url, user, password);
			String sql = "select PASSWORD from LOGIN_REG_TABLE WHERE EMAIL_ID = ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				String Pass = rs.getString(1);
				
				String to = request.getParameter("Email");
				
				String from ="luciferdelgado12041998@gmail.com";
				final String username = "lucifer delgado";
				final String passwordd = "9653403415";
				
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
			    Session session = Session.getInstance(pros, new javax.mail.Authenticator() {
			    	protected PasswordAuthentication getPasswordAuthentication() {
			    		return new PasswordAuthentication(from , passwordd);
			    	}
			    });
			    
			    try {
			    	Message message = new MimeMessage(session);
			    	message.setFrom(new InternetAddress(from));
			    	message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			    	
			    	message.setSubject("Password Recovery");
			    	
			    	message.setContent("<h1>Password for your register email id : "+Pass+"</h1>","text/html");
			    	
			    	Transport.send(message);
			    	
			    	System.out.println("Mail sent Successfully");
			    	PrintWriter out = response.getWriter();
			    	out.print("<html><body><h3>Password has been successfully sent on your registered MAIL ID</h3>"
			    			+ "<br><br><a href='Home.jsp'>HOME</a></body></html>");
			    }
			    catch(Exception e) {
			    	e.printStackTrace();
			    }
				
//				PrintWriter out = response.getWriter();
//				
//				out.print("<html><body><h3> Your Password is : "+Pass+"</h3></body></html>");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}
