package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {
	public static Connection requestConnection() throws ClassNotFoundException, SQLException
	{
		 Connection con=null;
		 String url="jdbc:mysql://localhost:3306/event_management";
		 String user="root";
		 String password="Tiger";
		 Class.forName("com.mysql.cj.jdbc.Driver");
		 con=DriverManager.getConnection(url, user, password);
		 
		 return con;
	}

}
