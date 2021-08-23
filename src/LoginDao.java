import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {

	public static boolean validate(String email , String pass) {
		boolean status = false;
		
		try {
			
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String url = "jdbc:sqlserver://LAPTOP-6GE41I0O\\SQLEXPRESS;databaseName=CreditCardFraud";
			String user = "CreditCardFraud";
			String password="Password@123";
			
			Connection con = DriverManager.getConnection(url, user, password);
			
			String sql = "select * from dbo.LOGIN_REG_TABLE where EMAIL_ID=? AND PASSWORD=?";
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, email);
			ps.setString(2, pass);
			
			ResultSet rs = ps.executeQuery();
			
			status = rs.next();
		
			System.out.println("Connected");
		}
		catch(Exception e) {
			System.out.println("Oops there's an error : "+e);
		}
			return status ;
	
}
	}
