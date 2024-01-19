package com.app.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

import com.app.model.Student;

public class StudentDao {

	public static Connection getConnection() throws SQLException  
	{ 
		Connection con = null;
		//register driver
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			System.out.println("Driver found");
			
			//Establish connection
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","Netra@28");
			System.out.println("Connection Establish");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
		
	}
	public static Student getData(int prn)
	{
		Student s = new Student();
		s.setPrn(prn);
		
		
		try {
			Connection con = StudentDao.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from student where prn=?");
			 ps.setInt(1,s.getPrn());
			    
		        ResultSet rs = ps.executeQuery();
		        
		        ResultSetMetaData rsmd = rs.getMetaData();
		        
		        
		        while(rs.next())
		        {
		        	
		        	s.setPrn(rs.getInt(1));
		        	s.setName(rs.getString(2));
		        	s.setM1(rs.getInt(3));
					s.setM2(rs.getInt(4));
					s.setM3(rs.getInt(5));
			       
		        }	
		        
		        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		
		return s;
	}

}
