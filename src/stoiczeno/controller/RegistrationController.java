package stoiczeno.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stoiczeno.model.RegisterComplete;
import stoiczeno.pojo.RegistrationDetails;

public class RegistrationController extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
    public RegistrationController() 
    {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String customer_id=request.getParameter("customer_id");
		String first_name=request.getParameter("first_name");
		String last_name=request.getParameter("last_name");
		String email_id=request.getParameter("email_id");
		String mobile_no=request.getParameter("mobile_no");
		String address=request.getParameter("address");
		String password=request.getParameter("password");
		String profile_pic=request.getParameter("profile_pic");
		
		try
		{
			RegistrationDetails rd=new RegistrationDetails(customer_id,first_name,last_name,email_id,mobile_no,address,password,profile_pic);
			RegisterComplete rc=new RegisterComplete();
			boolean result=rc.register(rd);
			
			if(result)
			{
				response.sendRedirect("Login.jsp");
			}
			else
			{
				System.out.println("something went wrong.....");
			}
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
	}

}
