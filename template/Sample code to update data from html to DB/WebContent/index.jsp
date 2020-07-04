<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Template Home Page</title>
</head>
<body>
	<form action="login.jsp" method=post>
		<table cellpadding=3>
			<tr>
				<td>Please change the form action in the current jsp<br>
					Replace the <b>login.jsp</b> with the <b>jsp</b> name that you need
					to test.<br> <br> Also make sure you add <b><%@page
							import="org.TestDao"%></b> as the first
					line of your jsp and access the DB through class name <b>TestDao</b>
					as shown in Logindao.jsp<br>
					Add your db details in DBConnect.java file and make the required table in <br>
					your db to test the values. 
					
				<td>
			</tr>
		</table>
		<p>
			<input type=submit value="Test">
	</form>
</body>
</html>