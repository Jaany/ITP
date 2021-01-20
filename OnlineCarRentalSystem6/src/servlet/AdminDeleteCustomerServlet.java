package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.ICustomer;
import service.CustomerImp;




/**
 * Servlet implementation class DeleteBusServlet
 */
@WebServlet("/AdminDeleteCustomerServlet")
public class AdminDeleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminDeleteCustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String NIC =request.getParameter("NIC");	
		
		ICustomer icustomer = new CustomerImp();
		icustomer.removeCustomer(NIC);
	
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AdminViewCustomer.jsp");
		dispatcher.forward(request, response);
	}

}
