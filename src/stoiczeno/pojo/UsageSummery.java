package stoiczeno.pojo;

public class UsageSummery {
	private String CustomerId;
	private String Date;
	private String Device;
	private String Content;
	private String Location;
	private String Time;
	private String Usage;
	
	private long totalMobileUsage;
	/**
	 * @return the customerId
	 */
	public String getCustomerId() {
		return CustomerId;
	}
	/**
	 * @param customerId the customerId to set
	 */
	public void setCustomerId(String customerId) {
		CustomerId = customerId;
	}
	/**
	 * @return the date
	 */
	public String getDate() {
		return Date;
	}
	/**
	 * @param date the date to set
	 */
	public void setDate(String date) {
		Date = date;
	}
	
	public long getDevice()
	{
		return totalMobileUsage;
	}
	/**
	 * @param device the device to set
	 **/
	public void setDevice(String device) 
	{
		this.Device = device;
	}
	
	public String getContent() {
		return Content;
	}
	/**
	 * @param content the content to set
	 */
	public void setContent(String content) {
		Content = content;
	}
	/**
	 * @return the location
	 */
	public String getLocation() {
		return Location;
	}
	/**
	 * @param location the location to set
	 */
	public void setLocation(String location) {
		Location = location;
	}
	/**
	 * @return the time
	 */
	public String getTime() {
		return Time;
	}
	/**
	 * @param time the time to set
	 */
	public void setTime(String time) {
		Time = time;
	}
	/**
	 * @return the usage
	 */
	public String getUsage() {
		return Usage;
	}
	/**
	 * @param usage the usage to set
	 */
	public void setUsage(String usage) {
		Usage = usage;
	}
	
	
	public UsageSummery(String customerId, String date, String device, String content, String location, String time,
			String usage) {
	
		CustomerId = customerId;
		Date = date;
		Device = device;
		Content = content;
		Location = location;
		Time = time;
		Usage = usage;
	}
	
	public UsageSummery() {
	
		CustomerId = "";
		Date = "";
		Device = "";
		Content = "";
		Location = "";
		Time = "";
		Usage = "";
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "UsageSummery [CustomerId=" + CustomerId + ", Date=" + Date + ", Device=" + Device + ", Content="
				+ Content + ", Location=" + Location + ", Time=" + Time + ", Usage=" + Usage + "]";
	}
	

}
