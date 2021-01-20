package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.DBconnection;


public class DBconnection {
	
	

	@SuppressWarnings("static-access")

	   
	   public  static Connection getconnection() throws ClassNotFoundException, SQLException {
		   Connection con = null;
		   Class.forName("com.mysql.cj.jdbc.Driver");
		   String pass = "Hussain123**";
		   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root",pass);
		   
		   return con;

	    }//ending get connection method
	}//end class


