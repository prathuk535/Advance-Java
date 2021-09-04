package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.AsyncContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns= {"/MyServlet"},asyncSupported=true)
public class MyServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		AsyncContext ac=req.startAsync();
		
		PrintWriter out=resp.getWriter();
		new Thread()
		{
			public void run()
			{
				try
				{
					for(int i=0;i<=5;i++)
					{
						out.println(i);
						Thread.currentThread().sleep(1000);
					}
				}
				catch(Exception e)
				{
					out.println(e);
				}
				ac.complete();
			}
		}.start();
	}
}
