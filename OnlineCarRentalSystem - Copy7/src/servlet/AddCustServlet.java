package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Customer;
import service.ICustomer;
import service.CustomerImp;

/**
 * Servlet implementation class AddCustServlet
 */
@WebServlet("/AddCustServlet")
public class AddCustServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AddCustServlet() {
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
		// TODO Auto-generated method stub
		doGet(request, response);
		
		Customer customer = new Customer();

		customer.setFirstName(request.getParameter("FirstName"));
		customer.setLastName(request.getParameter("LastName"));
		customer.setNIC(request.getParameter("NIC"));
		customer.setLicenseNum(request.getParameter("LicenseNum"));
		customer.setLicenseEndDate(request.getParameter("LicenseEndDate"));
		customer.setAddress(request.getParameter("Address"));
		customer.setPhone(request.getParameter("Phone"));
		customer.setEmail(request.getParameter("Email"));

		ICustomer iCustomer = new CustomerImp();
		iCustomer.AddCustomer(customer);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AddCustomerDetails.jsp");
		dispatcher.forward(request, response);
	}

}
