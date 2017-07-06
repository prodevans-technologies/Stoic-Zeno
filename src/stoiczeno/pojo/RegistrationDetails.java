package stoiczeno.pojo;

public class RegistrationDetails
{
	private String customer_id;
	private String first_name;
	private String last_name;
	private String email_id;
	private String mobile_no;
	private String address;
	private String password;
	private String profile_pic;
	
	public RegistrationDetails()
	{
		this.customer_id = "";
		this.first_name = "";
		this.last_name = "";
		this.email_id = "";
		this.mobile_no = "";
		this.address = "";
		this.password = "";
		this.profile_pic = "";
	}
	
	public String getCustomer_id() {
		return customer_id;
	}

	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getEmail_id() {
		return email_id;
	}

	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}

	public String getMobile_no() {
		return mobile_no;
	}

	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getProfile_pic() {
		return profile_pic;
	}

	public void setProfile_pic(String profile_pic) {
		this.profile_pic = profile_pic;
	}

	public RegistrationDetails(String customer_id, String first_name, String last_name, String email_id,
			String mobile_no, String address, String password, String profile_pic)
	{
		super();
		this.customer_id = customer_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email_id = email_id;
		this.mobile_no = mobile_no;
		this.address = address;
		this.password = password;
		this.profile_pic = profile_pic;
	}

}
