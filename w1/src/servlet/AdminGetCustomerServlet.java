package servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DBconnection;

import model.Customer;


/**
 * Servlet implementation class GetRatesServlet
 */
@WebServlet("/AdminGetCustomerServlet")
public class AdminGetCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String NIC = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminGetCustomerServlet() {
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
	}
	
	
	
	
	

	public Customer get_Customer_details(String NIC)
	{
		
		Connection connection = null;
		DBconnection db = new DBconnection();

	
		try {
			connection = db.getconnection();
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
	
	PreparedStatement preparedstatement=null;
	ResultSet resultset=null;
	
	Customer customer = new Customer();
	
	
	
	try {
		
	
		String sql="select* from Customer where NIC=?";
		
		preparedstatement=connection.prepareStatement(sql);
		preparedstatement.setString(1,NIC);
		resultset=preparedstatement.executeQuery();
		
	
		while(resultset.next())
		{
			customer.setFirstName(resultset.getString("FirstName"));
			
			customer.setLastName(resultset.getString("LastName"));
				
			
			
			customer.setNIC(resultset.getString("NIC"));

			customer.setLicenseNum(resultset.getString("LicenseNum"));


			customer.setLicenseEndDate(resultset.getString("LicenseEndDate"));


			customer.setAddress(resultset.getString("Address"));
			

			customer.setPhone(resultset.getString("Phone"));
			

			customer.setEmail(resultset.getString("Email"));
			
			
				
		}
	
		
	
	
	}catch(Exception e)
    	{
		System.out.println(e);
    	}
	
	return customer;
	

	
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
