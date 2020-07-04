
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login.jsp</title>
</head>
<body>

	Login.jsp

	<form action="Logindao.jsp" name="login" onsubmit="return check()">
		<table cellpadding="10">
			<tr>
				<th colspan="2">Admin Login</th>
			</tr>

			<tr>
				<td><b>Email:</b></td>
				<td><input type="email" name="email" required /></td>
			</tr>

			<tr>
				<td><b>Password:</b></td>
				<td><input type="password" name="password" required /></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit"
					value="Login" /></td>
			</tr>
		</table>
	</form>

</body>
</html>