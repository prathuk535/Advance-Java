package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/MyServlet1")
public class MyServlet1 extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setAttribute("nm", "Rahul");
		HttpSession hs=req.getSession();
		hs.setAttribute("em", "rahul@gmail.com");
		RequestDispatcher rd=req.getRequestDispatcher("MyServlet2");
		rd.forward(req, resp);
	}
}
