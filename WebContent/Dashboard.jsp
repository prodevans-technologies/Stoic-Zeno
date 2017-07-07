<%@page import="java.util.List"%>
<%@page import="stoiczeno.pojo.UsageSummery"%>
<%@page import="stoiczeno.model.GetDashboardData"%>
<%@page import="stoiczeno.pojo.BillData"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
	if ((session.getAttribute("user")) == null) {
		response.sendRedirect("Login.jsp");

	} 



	String username = (String) session.getAttribute("user");
%>

<<<<<<< HEAD
<!DOCTYPE html  >

=======
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<<<<<<< HEAD
=======
=======
    pageEncoding="ISO-8859-1"%>
>>>>>>> 81575fdfea1b76348c4a69d8889786a537969324
<!DOCTYPE html  >
>>>>>>> origin/dev
>>>>>>> origin/dev
>>>>>>> 3247b28998097a2a12cbd7ea0d13a1ec66cb8a6b
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<h1>
		Welcome :
		<%=username%>
		to Dashboard
	</h1>
	<a href="Logout.jsp">Logout</a>

	<br>
	<br>

	<%

		BillData bd = new GetDashboardData().GetBillData((String) session.getAttribute("user"));
			if (bd != null) {
	%>

	<h1>
		Customer ID :
		<%=bd.getCustomer_id()%></h1>
	<h1>
		DateD :
		<%=bd.getDate()%></h1>
	<h1>
		Current Bill :
		<%=bd.getCurrent_bill()%></h1>

	<h1>
		Billed Amount :
		<%=bd.getUnbilled_amount()%></h1>

	<%
		} else {
	%>

<<<<<<< HEAD
		
=======
	<h1>
		Customer ID :
		<%=bd1.getCustomer_id()%></h1>
	<h1>
		DateD :
		<%=bd1.getDate()%></h1>
	<h1>
		Current Bill :
		<%=bd1.getCurrent_bill()%></h1>
	<h1>
		Unbilled Amount :
		<%=bd1.getUnbilled_amount()%></h1>
	<%
		} else {
>>>>>>> 3247b28998097a2a12cbd7ea0d13a1ec66cb8a6b
	%>
	<h1>Data Not Found</h1>
	<%
		}
		%>
<table>
<tr>
	<th>date</th>
	<th>content</th>
	<th>location</th>
	<th>time</th>
	<th>usage</th>
</tr>
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
=======
<h1>Customer ID : <%=bd.getCustomer_id() %></h1>
<h1>DateD : <%=bd.getDate() %></h1>
<h1>Current Bill : <%=bd.getCurrent_bill() %></h1>
<<<<<<< HEAD
<h1>Billed Amount : <%=bd.getUnbilled_amount() %></h1>
=======
<h1>Unbilled Amount : <%=bd.getUnbilled_amount() %></h1>
<%
}
else
{
%>
>>>>>>> 81575fdfea1b76348c4a69d8889786a537969324
	<h1>Data Not Found</h1>
	<%
		}
	%>


>>>>>>> origin/dev
>>>>>>> origin/dev

<<<<<<< HEAD
>>>>>>> 3247b28998097a2a12cbd7ea0d13a1ec66cb8a6b

	<%
		GetDashboardData getData=new GetDashboardData();
		
		List< UsageSummery> list=getData.GetDeviceUsage(username, "mobile");
		
		for(UsageSummery summery : list){
			out.print("<tr> <th>"+summery.getDate()+"</th>		"+
		"			<th>"+summery.getContent()+"</th>		"+
					"			<th>"+summery.getLocation()+"</th>		"+
		"			<th>"+summery.getTime()+"</th>"
		+"<th>"+summery.getUsage()+"</th></tr>");
			
		}
	%>
	</table>

</body>
</html>