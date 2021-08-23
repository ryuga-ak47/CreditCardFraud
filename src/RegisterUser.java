

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
 * Servlet implementation class RegisterUser
 */
@WebServlet("/register")
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url = "jdbc:sqlserver://LAPTOP-6GE41I0O\\SQLEXPRESS;databaseName=CreditCardFraud";
			String user = "CreditCardFraud";
			String password="Password@123";
			
			Connection con = DriverManager.getConnection(url, user, password);
			
			
			String sql = "INSERT INTO dbo.LOGIN_REG_TABLE(USER_ID , FNAME , LNAME , EMAIL_ID , CONTACT_NO , PASSWORD) values(? , ? , ? , ? , ? , ?)";
			PreparedStatement ps = con.prepareStatement(sql);
			Statement s = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
			con.setHoldability(ResultSet.HOLD_CURSORS_OVER_COMMIT);
			ResultSet rs = s.executeQuery("Select USER_ID from dbo.LOGIN_REG_TABLE");
			int id = 0;
			boolean innt  = rs.last();
			if(innt) {
				id = rs.getInt("USER_ID")+1;
			}
		    
			ps.setInt(1, id);
			ps.setString(2, request.getParameter("FirstName"));
			ps.setString(3, request.getParameter("LastName"));
			ps.setString(4, request.getParameter("EmailID"));
			ps.setString(5, request.getParameter("Contact"));
			ps.setString(6, request.getParameter("Password"));
			
			int rss= ps.executeUpdate();
			
			if(rss > 0) {
				response.sendRedirect("Home.jsp");
//				PrintWriter out = response.getWriter();
//				Stirng s = ""
//				out.println("<html><body><h1>Successfully Inserted</h1></body></html>");
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		
		}
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
