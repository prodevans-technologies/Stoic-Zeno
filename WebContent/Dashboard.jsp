<%@page import="stoiczeno.model.GetDashboardData"%>
<%@page import="stoiczeno.pojo.BillData"%>
<%
if( (session.getAttribute("user")) == null )
{
     response.sendRedirect("Login.jsp");
}
else
{
	String username=(String)session.getAttribute("user");
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html  >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1>Welcome  :  <%=username %>  to Dashboard</h1>
<a href="Logout.jsp">Logout</a>

<br><br>

<%
BillData bd=new GetDashboardData().GetData();
%>

<h1>Customer ID : <%=bd.getCustomer_id() %></h1>
<h1>DateD : <%=bd.getDate() %></h1>
<h1>Current Bill : <%=bd.getCurrent_bill() %></h1>
<h1>Billed Amount : <%=bd.getUnbilled_amount() %></h1>


<%
}
%>
</body>
</html>