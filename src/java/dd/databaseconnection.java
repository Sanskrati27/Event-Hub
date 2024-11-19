/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dd;

import java.sql.*;

public class databaseconnection
{
	static Connection con;
	public static Connection getconnection()
	{
 		
 			
		try
		{
		Class.forName("oracle.jdbc.driver.OracleDriver");	
con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","my_db","oracle");
		}
		catch(Exception e)
		{
			System.out.println("class error");
		}
		return con;
	}
	
}
