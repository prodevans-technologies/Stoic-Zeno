package stoiczeno.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import stoiczeno.utilities.Utilities;
import stoiczeno.utilities.ZenoConnection;


public class Authenticator implements Utilities
{

	public boolean authenticate(String username, String password) throws SQLException
	{
		
		Connection con=null;
		Statement st;
		ResultSet rs;
		boolean result=false;
		try
		{
			con = ZenoConnection.getConnection();
			
			st=con.createStatement();
			String q="select * from user where customer_id like '"+username+"' and password like '"+password+"' ";
			rs=st.executeQuery(q);
			
			if(rs.next())
			{
				result=true;
			}
			else
				result= false;
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		
		if(result)
			return result;
		else
			return result;
	}
}
