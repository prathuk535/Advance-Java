import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="LoginServlet2", urlPatterns="/LoginServlet2")
public class LoginServlet2 extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=req.getParameter("username");
		String email=req.getParameter("email");
		String password=req.getParameter("pass");
		
		PrintWriter out=resp.getWriter();
		
		if(name.equals("Vampire") && email.equals("vampire@gmail.com") && password.equals("vampire@123"))
		{
			out.println("Welcome Vampire");
			out.println("Your Details : ");
			out.println("Username : "+name);
			out.println("Email : "+email);
			out.println("Password : "+password);
		}
		else
		{
			out.println("Invalid username and email and password");
		}
	}

}
