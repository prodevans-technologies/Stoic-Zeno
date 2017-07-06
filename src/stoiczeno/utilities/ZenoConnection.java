package stoiczeno.utilities;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * @author rajanikant
 *
 */
public class ZenoConnection implements Utilities {
	static Connection con = null;
	static Statement st;

	private ZenoConnection(){}
	
	
	public static Connection getConnection() {

		if (con != null) {
			return con;
		} else {
			try {
				Class.forName(DriverName);
				con = DriverManager.getConnection(URL, DBUserName, DBPassword);
				System.out.println("Connected....");
				return con;

			} catch (Exception ee) {
				ee.printStackTrace();
			}
		}
		return null;
	}


	@Override
	protected void finalize() throws Throwable {
		// TODO Auto-generated method stub
		try	{
			con.close();
			
		}
		catch(Exception ee){
			
			
		}
		
		
	}

}
