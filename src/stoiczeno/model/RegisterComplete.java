package stoiczeno.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import stoiczeno.pojo.RegistrationDetails;
import stoiczeno.utilities.Utilities;
import stoiczeno.utilities.ZenoConnection;

public class RegisterComplete implements Utilities
{

	public boolean register(RegistrationDetails rd) throws SQLException
	{
		
		Connection con=null;
		PreparedStatement ps;
		
		boolean result=false;
		try
		{
			con=ZenoConnection.getConnection();
			
			System.out.println("Connected....");
			
			String q="insert into user(customer_id,first_name,last_name,email,mobile,address,password) values(?,?,?,?,?,?,?)";
			ps=con.prepareStatement(q);
			ps.setString(1, rd.getCustomer_id());
			ps.setString(2, rd.getFirst_name());
			ps.setString(3, rd.getLast_name());
			ps.setString(4, rd.getEmail_id());
			ps.setDouble(5, Double.parseDouble( rd.getMobile_no() ));
			ps.setString(6, rd.getAddress());
			ps.setString(7, rd.getPassword());

			int cnt=ps.executeUpdate();
			if(cnt>0)
			{
				return true;
			}
			else
			{
				return false;
			}
			
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
