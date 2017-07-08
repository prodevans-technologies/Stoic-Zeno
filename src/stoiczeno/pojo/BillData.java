package stoiczeno.pojo;

public class BillData 
{

	private String customer_id;
	private String date;
	private double current_bill;
	private double unbilled_amount;
	
	public String getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(String customer_id) {
		this.customer_id = customer_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public double getCurrent_bill() {
		return current_bill;
	}
	public void setCurrent_bill(double current_bill) {
		this.current_bill = current_bill;
	}
	public double getUnbilled_amount() {
		return unbilled_amount;
	}
	public void setUnbilled_amount(double unbilled_amount) {
		this.unbilled_amount = unbilled_amount;
	}
	
	public void BillData()
	{
		
	}
	
	public BillData(String customer_id, String date, double current_bill, double unbilled_amount) {
		super();
		this.customer_id = customer_id;
		this.date = date;
		this.current_bill = current_bill;
		this.unbilled_amount = unbilled_amount;
	}

	
}
