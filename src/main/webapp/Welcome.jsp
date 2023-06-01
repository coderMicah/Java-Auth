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
		//Prevent back btn to be accesed once user logs out
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
		response.setHeader("Pragma", "no-cache");
		response.setHeader("Expires", "0");
		
		//Prevent unauth user 
		if (session.getAttribute("name") == null) {
			response.sendRedirect("Login.jsp");
		}
			
	%>
	 Welcome ${name} <br>
	 <a href="Videos.jsp">Videos</a>
	 <a href="About.jsp">About</a>

</body>
</html>