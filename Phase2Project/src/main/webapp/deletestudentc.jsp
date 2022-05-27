<%@page import="com.company.*"%>
<%@page import="java.util.*" %>
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
int stid=Integer.parseInt(request.getParameter("stid"));
StudentPOJO sb = new StudentPOJO();
sb.setId(stid);
StudentDAO dao=new StudentDAO();
int row=dao.deleteStd(sb);

if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>