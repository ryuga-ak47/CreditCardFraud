

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Logout() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		HttpSession session = request.getSession(false); //getting to session object
		if(session!=null) // check if condition the session not null

		{
		
//		response.setHeader("Cache-Control", "no-store");
//		response.setHeader("Pragma", "no-cache");
//		response.setHeader("Expires", "0");
//		response.setDateHeader("Expires", -1);
		session.removeAttribute("USERMAIL");
		session.removeAttribute("USERPASS");
		session.invalidate();
		
		
		//using this method to destroy the sesion object

//		request.setAttribute("errorMS", "Logged out successfully"); //send "errorMSG" object on client side. And get using request.getAttribute() method

		response.sendRedirect("Home.jsp"); // using RequestDispatcher method forward to login page.

		
		System.out.println("you can logged out successfully");
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
