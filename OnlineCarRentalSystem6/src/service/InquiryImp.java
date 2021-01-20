package service;

import java.beans.Statement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.DBconnection;

import model.Inquiry;

public class InquiryImp implements I_Inquiry {

	private PreparedStatement preparedStatement;

	private static Connection connection;
	private ResultSet resultset;

	Statement statement;

	public void AddInquiry(Inquiry inquiry) {

		try {

			String sql = "insert into inquiry(Name,Booking,Email,Problem,Comment) values(?,?,?,?,?)";

			connection = DBconnection.getconnection();

			/*
			 * Query is available in sql
			 */
			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(1, inquiry.getName());
			preparedStatement.setString(2, inquiry.getBooking());
			preparedStatement.setString(3, inquiry.getEmail());
			preparedStatement.setString(4, inquiry.getProblem());
			preparedStatement.setString(5, inquiry.getComment());
			

			preparedStatement.execute();
			connection.commit();

		} catch (Exception e) {

			System.out.println(e);
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {

			}
		}

	}

	// Retrieve Customer Details from Customer table
	public ArrayList<Inquiry> get_Inquiry_details() {

		try {
			connection = DBconnection.getconnection();
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}

		preparedStatement = null;

		ArrayList<Inquiry> arraylist = new ArrayList<>();

		try {

			String sql = "select* from inquiry";
			preparedStatement = connection.prepareStatement(sql);
			resultset = preparedStatement.executeQuery();

			while (resultset.next()) {

				Inquiry inquiry = new Inquiry();
				inquiry.setInquiryID(resultset.getInt("InquiryID"));
				inquiry.setName(resultset.getString("Name"));
				inquiry.setBooking(resultset.getString("Booking"));
				inquiry.setEmail(resultset.getString("Email"));
				inquiry.setProblem(resultset.getString("Problem"));
				inquiry.setComment(resultset.getString("Comment"));
				

				arraylist.add(inquiry);

			}

		} catch (Exception e) {

			System.out.println(e);
		} finally {
			/*
			 * Close prepared statement and database connectivity at the end of transaction
			 */
			try {
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (SQLException e) {

			}
		}

		return arraylist;

	}

	
	

}
