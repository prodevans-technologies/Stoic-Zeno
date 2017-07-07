package stoiczeno.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import stoiczeno.pojo.BillData;
import stoiczeno.pojo.UsageSummery;
import stoiczeno.utilities.ZenoConnection;

public class GetDashboardData 
{

	public BillData GetBillData(String customer_id)
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
	
	public List<UsageSummery> GetDeviceUsage(String customer_id, String Device_name)
	{
		Connection con=null;
		Statement st;
		ResultSet rs;
		
		List<UsageSummery> list=new ArrayList<UsageSummery>();
		
		try
		{
			con = ZenoConnection.getConnection();
			
			st=con.createStatement();
			String q="select * from usage_summary where customer_id like '"+customer_id+"' and device like '"+Device_name+"' ";
			rs=st.executeQuery(q);
			UsageSummery us=new UsageSummery();
			
			while(rs.next())
			{
				UsageSummery summery=new UsageSummery();
				summery.setCustomerId(rs.getString("customer_id"));
				summery.setDate(rs.getString("date"));
				summery.setDevice(rs.getString("device"));
				summery.setContent(rs.getString("content"));
				summery.setLocation(rs.getString("location"));
				summery.setTime(rs.getString("time"));
				summery.setUsage(rs.getString("usage"));
				
				list.add(summery);
			}
			return list;
			
		}
		catch (Exception e) 
		{
			System.out.println(e);
		}
		return null;
	}
	
	
	
}
