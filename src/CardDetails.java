

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
 * Servlet implementation class CardDetails
 */
@WebServlet("/carddetails")
public class CardDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CardDetails() {
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
			
			
			String sql = "INSERT INTO dbo.CARD_DETAILS_TABLE(USER_ID , CARD_NUMBER , CARD_MONTH , CARD_YEAR , CARD_CVV , CARD_HOLDER) values(? , ? , ? , ? , ? , ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			Statement s = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			con.setHoldability(ResultSet.HOLD_CURSORS_OVER_COMMIT);
			ResultSet rs = s.executeQuery("Select USER_ID from dbo.CARD_DETAILS_TABLE");
			int id = 0;
			boolean innt  = rs.last();
			if(innt) {
				id = rs.getInt("USER_ID")+1;
			}
		    
			ps.setInt(1, id);
			ps.setString(2, request.getParameter("Card"));
			ps.setString(3, request.getParameter("Month"));
			ps.setString(4, request.getParameter("Year"));
			ps.setString(5, request.getParameter("CVV"));
			ps.setString(6, request.getParameter("NAME"));
			
			int rss= ps.executeUpdate();
			
			if(rss > 0) {
				response.sendRedirect("Debit Credit Details.jsp");
				PrintWriter out = response.getWriter();
				out.println("<footer><h5>Successfully Inserted</h5></footer>");
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		
		}
		
	}

}
