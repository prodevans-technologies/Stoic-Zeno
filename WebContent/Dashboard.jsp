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
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h1>Welcome  :  <%=username %>  to Dashboard</h1>
<a href="Logout.jsp">Logout</a>

<%
}
%>
</body>
</html>