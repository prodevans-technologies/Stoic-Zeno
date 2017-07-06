package stoiczeno.pojo;

public class ZenoUser {


	private String username;
	private String password;
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public ZenoUser()
	{
		
	}
	public ZenoUser(String username, String password) {
		
		this.username = username;
		this.password = password;
	}
	
}