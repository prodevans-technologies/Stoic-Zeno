<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


</head>
<body>

	<%
		if ((session.getAttribute("user")) != null) {
			response.sendRedirect("Dashboard.jsp");
		} else {

			if (request.getParameter("error") != null) {
				out.print("Login fail!!!<br>");
			}
			if (request.getParameter("register") != null
					&& request.getParameter("register").toString().equals("success")) {
				out.print("Registration successful...<br>");
			} else if (request.getParameter("register") != null
					&& request.getParameter("register").toString().equals("fail")) {
				out.print("Registration fail!!!<br>");
			}
	%>

	<form action="LoginController" method="POST">

		Email Id : <input type="text" name="username"><br>
		<br> Password : <input type="text" name="password"><br>
		<br> <input type="submit" value="Login"><br>
		<br> <a href="Registration.jsp">Registration</a>

	</form>


	<%
		}
	%>
</body>
</html>