package stoiczeno.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class Authenticator extends Utilities
{

	public boolean authenticate(String username, String password) throws SQLException
	{
		
		Connection con=null;
		Statement st;
		ResultSet rs;
		boolean result=false;
		try
		{
			Class.forName(DriverName);
			con=DriverManager.getConnection(URL,DBUserName,DBPassword);
		    System.out.println("Connected....");
			
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
		finally
		{
			con.close();
		}
		if(result)
			return result;
		else
			return result;
	}
}
