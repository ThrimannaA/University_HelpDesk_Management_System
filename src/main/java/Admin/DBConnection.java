package Admin;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	
	private static String url="jdbc:mysql://localhost:3306/admin";
	private static String username="root";
	private static String password="Anuji@123";
	private static Connection con;
	
	
	// Establishes a database connection and returns
	public static Connection getConnection() {
		try{
			
			 //Load the MySQL JDBC driver
			Class.forName("com.mysql.jdbc.Driver");
			
			// Create a database connection
			con=DriverManager.getConnection(url,username,password);
		}catch(Exception e) {
			System.out.println("connection not successfull");
		}
		return con;
	}
}


