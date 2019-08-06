
package com.infotech.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.infotech.model.User;


@Repository
public class DBConnect {
	
	public  void insertRecord(String number,String name,String lat,String lng,String bikeStands,String availableBikestands,String availableBikes,double distance){
		Connection con=null;
		PreparedStatement pstmt=null;
		
		try{
			
			System.out.println("Inside DBConnection insertRecord()-->1");
			
			//Load the Oracle driver class implictly
			Class.forName("oracle.jdbc.driver.OracleDriver");
			//Class.forName("com.mysql.jdbc.Driver");  
			
			//Creating the connection object
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCLDB","SYSTEM","root");
			
			//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/TestURL","root","root");
			
			//Prepared statement to insert record into table
			pstmt=con.prepareStatement("INSERT INTO STATIONS (STATIONNUMBER,NAME,LATITUDE,LONGITUDE,BIKESTANDS,AVAILABLEBIKESTANDS,AVAILABLEBIKES,DISTANCE) values(?,?,?,?,?,?,?,?)");
			
			//Set parameters
			int stationNumber=Integer.parseInt(number);
			pstmt.setInt(1, stationNumber);
			pstmt.setString(2, name);
			pstmt.setString(3, lat);
			pstmt.setString(4, lng);
			pstmt.setString(5, bikeStands);
			pstmt.setString(6, availableBikestands);
			pstmt.setString(7, availableBikes);
			pstmt.setDouble(8, distance);
			System.out.println("Inside DBConnection insertRecord()-->2");

			//Execute Query
			int j=pstmt.executeUpdate();
			
			System.out.println(j+"records inserted successfully!!");
			
		}catch(Exception ex){
			System.out.println("Exception in DBConnection insertRecord()!!");
			ex.printStackTrace();
		}
		finally{
			if(con!=null){
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		System.out.println("Exiting  DBConnection insertRecord()-->3");

	}
	
	
	public  List<User> getStationData(){
		Connection con=null;
		Statement stmt = null;
		List<User> list = null;
		try{
			
			System.out.println("Inside DBConnection getStationData");
			
			//Load the Oracle driver class implictly
			Class.forName("oracle.jdbc.driver.OracleDriver");
		//	Class.forName("com.mysql.jdbc.Driver");  
			
			//Creating the connection object
			con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORCLDB","SYSTEM","root");
			//con=DriverManager.getConnection("jdbc:mysql://localhost:3306/TestURL","root","root");
			 stmt = (Statement) con.createStatement();

			
			String sql = "SELECT STATIONNUMBER,NAME,LATITUDE,LONGITUDE,BIKESTANDS,AVAILABLEBIKESTANDS,AVAILABLEBIKES,DISTANCE FROM STATIONS";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			//Execute Query
			 list = new ArrayList<User>();
			
			 while(rs.next()){
		         //Retrieve by column name
				
		         int id  = rs.getInt("STATIONNUMBER");
		         String name = rs.getString("NAME");
		         String lat = rs.getString("LATITUDE");
		         String longitude = rs.getString("LONGITUDE");
		         String bikeStands = rs.getString("BIKESTANDS");
		         String availBike = rs.getString("AVAILABLEBIKESTANDS");
		         String availBikstandse = rs.getString("AVAILABLEBIKES");
		         Double dist = rs.getDouble("DISTANCE");

		         list.add(new User(name, id, lat, longitude, bikeStands, availBike,availBikstandse, dist));
		         //Display values
		        
		      }
		      rs.close();
			
		}catch(Exception ex){
			System.out.println("Exception in DBConnection insertRecord()!!");
			ex.printStackTrace();
		}
		finally{
			if(con!=null){
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		System.out.println("Exiting  DBConnection getRecord()-->3");
		return list;

	}
	

}
