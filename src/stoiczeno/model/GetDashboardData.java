package stoiczeno.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import stoiczeno.pojo.BillData;
import stoiczeno.utilities.ZenoConnection;

public class GetDashboardData 
{

	public BillData GetData(String customer_id)
	{
		Connection con=null;
		Statement st;
		ResultSet rs;
		
		try
		{
			con = ZenoConnection.getConnection();
			
			st=con.createStatement();
			String q="select * from bill where r_id in (select max(r_id) from bill where customer_id like '"+customer_id+"'  )";
			rs=st.executeQuery(q);
			BillData bd=null;
			if(rs.next())
			{
				bd=new BillData(rs.getString("customer_id"),rs.getDate("date")+"",rs.getDouble("current_bill"),rs.getDouble("unbilled_amount"));
				return bd;
			}
			else
				return bd;
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		return null;
	}
}
