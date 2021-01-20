package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Inquiry;
import service.I_Inquiry;
import service.InquiryImp;

/**
 * Servlet implementation class AddInquiryServlet
 */
@WebServlet("/AddInquiryServlet")
public class AddInquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AddInquiryServlet() {
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
		
		Inquiry inquiry = new Inquiry();
		
		inquiry.setName(request.getParameter("Name"));
		inquiry.setBooking(request.getParameter("Booking"));
		inquiry.setEmail(request.getParameter("Email"));
		inquiry.setProblem(request.getParameter("Problem"));
		inquiry.setComment(request.getParameter("Comment"));

	

		I_Inquiry i_inquiry = new InquiryImp();
		i_inquiry.AddInquiry(inquiry);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AddInquiryDetails.jsp");
		dispatcher.forward(request, response);
	}

}
