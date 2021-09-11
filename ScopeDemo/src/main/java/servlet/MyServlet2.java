package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyServlet2 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=getInitParameter("nm");
		PrintWriter out=resp.getWriter();
		out.println("Welcome "+name);
		
		String websitename=getServletContext().getInitParameter("websitename");
		out.println("Welcome to "+websitename);
	}
}
