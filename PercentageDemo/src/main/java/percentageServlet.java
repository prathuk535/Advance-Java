import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="pServlet", urlPatterns="/pServlet")
public class percentageServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		float a=Float.parseFloat(req.getParameter("t1"));
		float b=Float.parseFloat(req.getParameter("t2"));
		float c=Float.parseFloat(req.getParameter("t3"));
		
		float d=(a+b+c)/300*100;
		PrintWriter out=resp.getWriter();
		out.println("percentage : "+d);
		if(d>50)
		{
			out.println("pass");
		}
		else
		{
			out.println("fail");
		}
	}

}
