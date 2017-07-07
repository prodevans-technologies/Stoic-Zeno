<%@page import="java.util.List"%>
<%@page import="stoiczeno.pojo.UsageSummery"%>
<%@page import="stoiczeno.model.GetDashboardData"%>
<%@page import="stoiczeno.pojo.BillData"%>
<%
	if ((session.getAttribute("user")) == null) {
		response.sendRedirect("Login.jsp");
	}

	String username = (String) session.getAttribute("user");
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		BillData bd1 = new GetDashboardData().GetBillData((String) session.getAttribute("user"));
		if (bd1 != null) {
	%>

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