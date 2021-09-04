package servlet;

import java.io.IOException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.instamojo.wrapper.api.ApiContext;
import com.instamojo.wrapper.api.Instamojo;
import com.instamojo.wrapper.api.InstamojoImpl;
import com.instamojo.wrapper.model.PaymentOrder;
import com.instamojo.wrapper.model.PaymentOrderResponse;

@WebServlet("/OrderController")
public class OrderController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 try 
	       {
	           ApiContext context = ApiContext.create("test_EsG86f0tFVeNXPT4hTQcI3AnGZg51Iqq3eE", "test_nl6r2GXsnuJ8fb0fVnUtALqnTAk5ishVeccRPRJfF4YJREFkn0WaWT7RStu9nvKrfbNkjBLK4leVPf84BxA7KcweYwcuDXFRrEmRU9O81nzvazj17kwHFCjpckz", ApiContext.Mode.TEST);
	           Instamojo api = new InstamojoImpl(context);

	           PaymentOrder order = new PaymentOrder();
	           order.setName("Prathmesh Kadam");
	           order.setEmail("kadamprathamesh535@gmail.com");
	           order.setPhone("9137159434");
	           order.setCurrency("INR");
	           order.setAmount((double)11);
	           order.setDescription("Description");
	           order.setRedirectUrl("https://www.google.com");
	           order.setWebhookUrl("https://www.google.com");
	           order.setTransactionId(UUID.randomUUID().toString());

	           PaymentOrderResponse paymentOrderResponse = api.createPaymentOrder(order);
	           resp.sendRedirect(paymentOrderResponse.getPaymentOptions().getPaymentUrl());
	       }
	       catch (Exception e) 
	       {
	           System.out.println(e);
	       }
	}
}
