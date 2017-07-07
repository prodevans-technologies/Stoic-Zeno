package stoiczeno.pojo;

import java.io.InputStream;

public class RegistrationDetails
{
	private String customer_id;
	private String first_name;
	private String last_name;
	private String email_id;
	private String mobile_no;
	private String address;
	private String password;
	
	


	public RegistrationDetails(String customer_id, String first_name, String last_name, String email_id,
			String mobile_no, String address, String password)
	{
		super();
		this.customer_id = customer_id;
		this.first_name = first_name;
		this.last_name = last_name;
		this.email_id = email_id;
		this.mobile_no = mobile_no;
		this.address = address;
		this.password = password;
		
	}




	/**
	 * @return the customer_id
	 */
	public String getCustomer_id() {
		return customer_id;
	}




	/**
	 * @param customer_id the customer_id to set
	 */
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}




	/**
	 * @return the first_name
	 */
	public String getFirst_name() {
		return first_name;
	}




	/**
	 * @param first_name the first_name to set
	 */
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}




	/**
	 * @return the last_name
	 */
	public String getLast_name() {
		return last_name;
	}




	/**
	 * @param last_name the last_name to set
	 */
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}




	/**
	 * @return the email_id
	 */
	public String getEmail_id() {
		return email_id;
	}




	/**
	 * @param email_id the email_id to set
	 */
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}




	/**
	 * @return the mobile_no
	 */
	public String getMobile_no() {
		return mobile_no;
	}




	/**
	 * @param mobile_no the mobile_no to set
	 */
	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}




	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}




	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}




	/**
	 * @return the password
	 */
	public String getPassword() {
		return password;
	}




	/**
	 * @param password the password to set
	 */
	public void setPassword(String password) {
		this.password = password;
	}

}
