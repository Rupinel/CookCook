package com.cookcook.model.dbutil;

import java.sql.*;

public class ConnectionUtil {
	public static Connection getConnection(String dns) {
		Connection conn = null;
		
		try {
			if(dns.equals("mysql")) {
				Class.forName("com.mysql.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sampleDB","admin","oracle");
				
			} else if(dns.equals("oracle")) {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","admin","oracle");				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			return conn;
		}		
	}

}
