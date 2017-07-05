package stoiczeno.model;

public class Authenticator
{

	public boolean authenticate(String username, String password)
	{
		//Database and API code comes here 
		if( ("vipin".equals(username)) && ("vipin".equals(password))  )
			return true;
		else
			return false;
	}
}
