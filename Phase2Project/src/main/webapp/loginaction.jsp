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
String name=request.getParameter("id");
String pass=request.getParameter("pwd");
if(name.equals("admin")&& pass.equals("admin")) {
	response.sendRedirect("home.jsp");
}else {
	response.sendRedirect("error.jsp");
}	
%>
</body>
</html>