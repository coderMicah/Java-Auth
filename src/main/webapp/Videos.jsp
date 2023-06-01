<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		if (session.getAttribute("name") == null) {
			response.sendRedirect("Login.jsp");
		}
	%>
	
	Welcome ${name}
	<br>
	<p>Videos Come Here</p>
	<form action="Logout">
		<input type="submit" value="Logout">
	</form>
</body>
</html>