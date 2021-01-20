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

import model.RepairAndMaintenance;


/**
 * Servlet implementation class GetRatesServlet
 */
@WebServlet("/GetRatesServlet")
public class GetMaintenanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String RepairID = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetMaintenanceServlet() {
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
	
	
	
	
	

	public RepairAndMaintenance get_RepairAndMaintenance(String Repair_ID)
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
	
	RepairAndMaintenance repairandmaintenance = new RepairAndMaintenance();
	
	
	
	try {
		
	
		String sql="select* from RepairAndMaintenance where RepairID=?";
		
		preparedstatement=connection.prepareStatement(sql);
		preparedstatement.setString(1,RepairID);
		resultset=preparedstatement.executeQuery();
		
	
		while(resultset.next())
		{
			repairandmaintenance.setRepairID(resultset.getString("RepairID"));
			
			repairandmaintenance.setVehicleID(resultset.getString("VehicleID"));
						
			repairandmaintenance.setStart_Date(resultset.getString("Start_Date"));

			repairandmaintenance.setEnd_Date(resultset.getString("End_Date"));

			repairandmaintenance.setDescription(resultset.getString("Description"));

			repairandmaintenance.setMaintenance_Cost(resultset.getString("Maintenance_Cost"));
				
		}
	
		
	
	
	}catch(Exception e)
    	{
		System.out.println(e);
    	}
	
	return repairandmaintenance;
	

	
	
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

}
