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

import model.Inquiry;


/**
 * Servlet implementation class GetRatesServlet
 */
@WebServlet("/GetInquiryDetails")
public class GetInquiryDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final int InquiryID = (Integer) null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetInquiryDetails() {
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
	
	
	
	
	

	public Inquiry get_Inquiry_details(int InquiryID)
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
	
	Inquiry inquiry = new Inquiry();
	
	
	
	try {
		
	
		String sql="select* from inquiry where InquiryID=?";
		
		preparedstatement=connection.prepareStatement(sql);
		preparedstatement.setInt(1,InquiryID);
		resultset=preparedstatement.executeQuery();
		
	
		while(resultset.next())
		{
			inquiry.setInquiryID(resultset.getInt("InquiryID"));
			
			inquiry.setName(resultset.getString("Name"));
				
			
			
			inquiry.setBooking(resultset.getString("Booking"));

			inquiry.setEmail(resultset.getString("Email"));


			inquiry.setProblem(resultset.getString("Problem"));


			inquiry.setComment(resultset.getString("Comment"));
			

			
				
		}
	
		
	
	
	}catch(Exception e)
    	{
		System.out.println(e);
    	}
	
	return inquiry;
	

	
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
