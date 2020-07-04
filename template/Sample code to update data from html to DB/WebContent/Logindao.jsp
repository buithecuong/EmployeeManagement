<%@page import="org.TestDao"%>
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
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		// Using the TestDao Class 
		String results = TestDao.login(email, password);

		if (results.equals("true")) {
			session.setAttribute("email", "admin");
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("index.jsp");
		}
	%>

</body>
</html>