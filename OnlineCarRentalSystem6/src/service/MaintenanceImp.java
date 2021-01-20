package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.DBconnection;

import model.RepairAndMaintenance;

public class MaintenanceImp implements IMaintenace {
	
	

	public static final Logger log = Logger.getLogger(MaintenanceImp.class.getName());

	private PreparedStatement preparedStatement;

	private static Connection connection;

	private ResultSet resultset;
	
//insert
	@Override
	public void AddMaintenanceDetails(RepairAndMaintenance repairandmaintenance) {
		
		try {
			connection = DBconnection.getconnection();
			
			String sql = "insert into maintenance (VehicleID,Start_Date,End_Date,Description,Maintenance_Cost) values (?,?,?,?,?)"; 
			

			preparedStatement = connection.prepareStatement(sql);
			
			preparedStatement.setString(1, repairandmaintenance.getVehicleID());
			//preparedStatement.setInt(2,repairandmaintenance.getRepairID());
			preparedStatement.setString(2, repairandmaintenance.getStart_Date());
			preparedStatement.setString(3, repairandmaintenance.getEnd_Date());
			preparedStatement.setString(4, repairandmaintenance.getDescription());
			preparedStatement.setString(5, repairandmaintenance.getMaintenance_Cost());

		
	
			
			preparedStatement.execute();
			connection.commit();

		} catch (Exception e) {
			log.log(Level.SEVERE, e.getMessage());
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
				log.log(Level.SEVERE, e.getMessage());
			}
		}

	}


	//Retrieve Details from maintenance Table

	@Override
	public ArrayList<RepairAndMaintenance> get_RepairAndMaintenance() {

		ArrayList<RepairAndMaintenance> arraylist = new ArrayList<>();
		try {
			connection = DBconnection.getconnection();

		

			String sql = "select* from maintenance";
			preparedStatement = connection.prepareStatement(sql);
			resultset = preparedStatement.executeQuery();

			while (resultset.next()) {

				RepairAndMaintenance repairandmaintenance = new RepairAndMaintenance();

				repairandmaintenance.setVehicleID(resultset.getString("VehicleID"));
				repairandmaintenance.setRepairID(resultset.getInt("RepairID"));
				repairandmaintenance.setStart_Date(resultset.getString("Start_Date"));
				repairandmaintenance.setEnd_Date(resultset.getString("End_Date"));
				repairandmaintenance.setDescription(resultset.getString("Description"));
				repairandmaintenance.setMaintenance_Cost(resultset.getString("Maintenance_Cost"));

				
			
				arraylist.add(repairandmaintenance);

			}

		} catch (Exception e) {
			log.log(Level.SEVERE, e.getMessage());
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
				log.log(Level.SEVERE, e.getMessage());
			}
		}

		return arraylist;

	}

	
	
	
	
	
	
	//update

	@Override
	public void UpdateMaintenanceDetails(RepairAndMaintenance repairandmaintenance) {
		try {
			connection = DBconnection.getconnection();

			
			System.out.println("ah,med  ccc"+repairandmaintenance.getVehicleID());
			
			String sql = "update maintenance set End_Date=? where VehicleID =?";

			preparedStatement = connection.prepareStatement(sql);

			preparedStatement.setString(2, repairandmaintenance.getVehicleID());
			
			preparedStatement.setString(1, repairandmaintenance.getEnd_Date());
			
			
			
			
			
			
			preparedStatement.executeUpdate();

		} catch (Exception e) {
			log.log(Level.SEVERE, e.getMessage());
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
				log.log(Level.SEVERE, e.getMessage());
			}
		}

	}


	

	@Override
	public void RemoveMaintenanceDetails(String VehicleID) {
		try {
			connection = DBconnection.getconnection();
			String sql = "Delete   from maintenance where VehicleID=?";
			PreparedStatement preparedstatement = connection.prepareStatement(sql);

			preparedstatement.setString(1, VehicleID);
			preparedstatement.executeUpdate();

		} catch (Exception e) {
			log.log(Level.SEVERE, e.getMessage());
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
				log.log(Level.SEVERE, e.getMessage());
			}
		}

	}


	
	

	
	
	
	
	
	
	



	}


