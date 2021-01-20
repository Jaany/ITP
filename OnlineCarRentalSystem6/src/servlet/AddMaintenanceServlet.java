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
 * Servlet implementation class AddMaintenanceServlet
 */
@WebServlet("/AddMaintenanceServlet")
public class AddMaintenanceServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddMaintenanceServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		RepairAndMaintenance repairandmaintenance = new RepairAndMaintenance();

	//	int RepairID = Integer.parseInt(request.getParameter("RepairID"));

		//repairandmaintenance.setRepairID(RepairID);
		repairandmaintenance.setVehicleID(request.getParameter("VehicleID"));
		repairandmaintenance.setStart_Date(request.getParameter("Start_Date"));
		repairandmaintenance.setEnd_Date(request.getParameter("End_Date"));
		repairandmaintenance.setDescription(request.getParameter("Description"));
		repairandmaintenance.setMaintenance_Cost(request.getParameter("Maintenance_Cost"));

		// System.out.println("hhhhhhhhhhhh"+request.getParameter("VehicleID"));

		IMaintenace irepairandmaintenance = new MaintenanceImp();
		irepairandmaintenance.AddMaintenanceDetails(repairandmaintenance);

		// System.out.println("lllllllllllll"+request.getParameter("RepairID"));

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ViewMaintenance.jsp");
		dispatcher.forward(request, response);

	}

}
