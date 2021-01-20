package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.RepairAndMaintenance;
import service.IMaintenace;
import service.MaintenanceImp;




/**
 * servlet implementation class UpdateMaintenanceSevlet
 */
@WebServlet("/UpdateMaintenanceServlet")
public class UpdateMaintenanceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateMaintenanceServlet() {
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
		RepairAndMaintenance repairandmaintenance = new RepairAndMaintenance();
		
		
		String VehicleID = request.getParameter("VehicleID");
		repairandmaintenance.setVehicleID(request.getParameter("VehicleID"));
		
		repairandmaintenance.setEnd_Date(request.getParameter("End_Date"));
		
		System.out.println("after  id hhhhhhhhhh"+ request.getParameter("End_Date"));
		
		
		System.out.println("after  id vec id"+ request.getParameter("VehicleID"));
	
		
	
		
		
		IMaintenace imaintenance = new MaintenanceImp();
		imaintenance.UpdateMaintenanceDetails(repairandmaintenance);
		
		System.out.println("before  id vec id"+ request.getParameter("VehicleID"));
		

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ViewMaintenance.jsp");
		dispatcher.forward(request, response);
	}

	

}
