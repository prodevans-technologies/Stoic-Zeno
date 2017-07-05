package stoiczeno.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import stoiczeno.model.Authenticator;
import stoiczeno.model.UserDetails;

public class LoginController extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	public LoginController() {
		super();
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		RequestDispatcher rd=null;
		Authenticator ath=new Authenticator();
		boolean result=ath.authenticate(username, password);
		if(result)
		{
			rd=req.getRequestDispatcher("Dashboard.jsp");
			UserDetails ud=new UserDetails(username, password);
			req.setAttribute("user", ud);
		}
		else
			rd=req.getRequestDispatcher("Errors.jsp");
		
		rd.forward(req, resp);
	
	}
}
