import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="LoginServlet", urlPatterns="/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=req.getParameter("user");
		String password=req.getParameter("pass");
		PrintWriter out=resp.getWriter();
		
		if(name.equals("Admin") && password.equals("pass@123"))
		{
			out.println("Welcome user");
		}
		else
		{
			out.println("Incorrect username or password");
		}
	}

}
