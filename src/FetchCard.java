

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FetchCard
 */
@WebServlet("/fetchcard")
public class FetchCard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FetchCard() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url = "jdbc:sqlserver://LAPTOP-6GE41I0O\\SQLEXPRESS;databaseName=CreditCardFraud";
			String user = "CreditCardFraud";
			String password="Password@123";
			
			Connection con = DriverManager.getConnection(url, user, password);
			
			String cvv = request.getParameter("CVV");
			String sql = "SELECT CARD_NUMBER , CARD_MONTH , CARD_YEAR , CARD_CVV , CARD_HOLDER FROM dbo.CARD_DETAILS_TABLE WHERE CARD_CVV = ?";
			PreparedStatement s = con.prepareStatement(sql);
			s.setString(1, cvv);
			
			ResultSet rs = s.executeQuery();
			
			
		    while(rs.next()) {
		    	
			    PrintWriter pw = response.getWriter();
			    pw.println("<html><body><p>Followinf details are L</p>"
			    		+ "<table class=\"table table-bordered\">\r\n" + 
			    		"		<thead>\r\n" + 
			    		"			<tr>\r\n" + 
			    		"				<th scope=\"col\">Product ID</th>\r\n" + 
			    		"				<th scope=\"col\">Product Name</th>\r\n" + 
			    		"				<th scope=\"col\">Paid amount</th>\r\n" + 
			    		"				<th scope=\"col\">Date of Payment</th>\r\n" + 
			    		"			</tr>\r\n" + 
			    		"		</thead>\r\n" + 
			    		"		<tbody></tbody></body></html>");
		    }
			
	
			
		}
		catch(Exception e) {
			e.printStackTrace();
		
		}

		
	}

}
