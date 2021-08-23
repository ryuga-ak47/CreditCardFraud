

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServ
 */
@WebServlet("/login")
public class LoginServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServ() {
        super();
        // TODO Auto-generated constructor stub
    }
    
public void doPost(HttpServletRequest request , HttpServletResponse response) throws ServletException,IOException {
		

		response.setContentType("text/jsp");
		PrintWriter out = response.getWriter();
		
		String e = request.getParameter("EMAIL");
		String p = request.getParameter("PASS");
		
		if(LoginDao.validate(e,p) == true) {
	        
			HttpSession session = request.getSession();
			session.setAttribute("USERMAIL", e);
			session.setAttribute("USERPASS", p);
			RequestDispatcher rd = request.getRequestDispatcher("After Login Page.jsp");
			rd.forward(request, response);
			//response.sendRedirect("After Login Page.jsp");
		}
		
		else {
			RequestDispatcher rd = request.getRequestDispatcher("Home.jsp");
			rd.forward(request, response);
			//response.sendRedirect("Home.jsp");
		}
		
		out.close();
	}


}
