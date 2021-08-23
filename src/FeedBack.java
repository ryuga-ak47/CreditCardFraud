

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.concurrent.atomic.AtomicInteger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FeedBack
 */
@WebServlet("/feedback")
public class FeedBack extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FeedBack() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

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
			
			
			String sql = "INSERT INTO dbo.FEED_BACK_TABLE(FEED_ID , FEED_NAME , FEED_EMAIL , FEED_NOTE) values(? , ? , ? , ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			Statement s = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			con.setHoldability(ResultSet.HOLD_CURSORS_OVER_COMMIT);
			ResultSet rs = s.executeQuery("Select FEED_ID from dbo.FEED_BACK_TABLE");
			int id = 0;
			boolean innt  = rs.last();
			if(innt) {
				id = rs.getInt("FEED_ID")+1;
			}
		    
			ps.setInt(1, id);
			ps.setString(2, request.getParameter("FullName"));
			ps.setString(3, request.getParameter("Email_ID"));
			ps.setString(4, request.getParameter("Feedback"));
			
			int rss= ps.executeUpdate();
			
			if(rss > 0) {
				PrintWriter out = response.getWriter();
				out.println("<html><body><h1>Successfully Inserted</h1></body></html>");
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		
		}
	}

}
