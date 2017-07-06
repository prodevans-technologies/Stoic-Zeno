package stoiczeno.utilities;

public 	interface Utilities
{
	public String DBUserName="root";
	public String DBPassword="root";
	public String DBHost="localhost";
	public String DBPort="3306";
	public String DBName="stoiczeno";	
	public String DriverName="com.mysql.jdbc.Driver";
	
	public String URL="jdbc:mysql://"+DBHost+":"+DBPort+"/"+DBName;
	//public String URL="jdbc:mysql://localhost:3306/stoiczeno","root","root";
	//public String URL="jdbc:mysql://"+DBHost+":"+DBPort+"/"+DBName+","+DBUserName+","+DBPassword;
	
	
	
}
