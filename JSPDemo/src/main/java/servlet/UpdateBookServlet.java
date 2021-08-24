package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateBookServlet")
public class UpdateBookServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int bookid=Integer.parseInt(req.getParameter("bookid"));
		String bookname=req.getParameter("bookname");
		String author=req.getParameter("author");
		String link=req.getParameter("link");
		Float price=Float.parseFloat(req.getParameter("price"));
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo","root","root");
			PreparedStatement ps=con.prepareStatement("update books set bookname=?,author=?,price=?,link=? where bookid=?");
			ps.setString(1,  bookname);
			ps.setString(2, author);
			ps.setFloat(3, price);
			ps.setString(4, link);
			ps.setInt(5, bookid);
			ps.executeUpdate();
			resp.sendRedirect("books.jsp");

		}
		catch(Exception e)
		{
			PrintWriter out=resp.getWriter();
			out.println(e);
		}
	}

}
