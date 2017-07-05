package stoiczeno.model;

public interface GlobalVariables 
{

	public String DBUserName="root";
	public String DBPassword="root";
	public String DBHost="localhost";
	public String DBPort="3306";
	public String DBName="stoiczeno";	
	
	//public String URL="jdbc:mysql://"+DBHost+":"+DBPort+"/"+DBName+","+DBUserName+","+DBPassword;
	
	
	public String URL="jdbc:mysql://localhost:3306/stoiczeno,root,root";
	
}
