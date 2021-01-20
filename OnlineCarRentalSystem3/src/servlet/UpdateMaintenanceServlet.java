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
		repairandmaintenance.setVehicleID(VehicleID);

		repairandmaintenance.setRepairID(request.getParameter("RepairID"));
		repairandmaintenance.setStart_Date(request.getParameter("Start_Date"));
		repairandmaintenance.setEnd_Date(request.getParameter("End_Date"));
		repairandmaintenance.setDescription(request.getParameter("Description"));
		repairandmaintenance.setMaintenance_Cost(request.getParameter("Maintenance_Cost"));
		
		System.out.println("hiiiiiiiiiiii  id"+ request.getParameter("VehicleID"));
		
	

		IMaintenace imaintenance = new MaintenanceImp();
		imaintenance.UpdateMaintenanceDetails(repairandmaintenance);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/UpdateForm.jsp");
		dispatcher.forward(request, response);
	}

	

}
