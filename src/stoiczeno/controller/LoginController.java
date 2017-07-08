package stoiczeno.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import stoiczeno.model.Authenticator;
import stoiczeno.pojo.ZenoUser;

public class LoginController extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	public LoginController() {
		super();
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		PrintWriter out=resp.getWriter();
		
		HttpSession session=req.getSession();
		try
		{
			String username = req.getParameter("username");
			String password = req.getParameter("password");
			
			Authenticator ath=new Authenticator();
			boolean result=ath.authenticate(username, password);
			if(result)
			{
				ZenoUser ud=new ZenoUser(username,password);
				session.setAttribute("user", ud.getUsername());
				resp.sendRedirect("Dashboard.jsp");
			}
			else
				resp.sendRedirect("portal.jsp?error='login-fail'");

		}
		catch (Exception e)
		{
			resp.sendRedirect("Errors.jsp");
			out.print("Error : "+e.getMessage());
		}
			
	}
}
