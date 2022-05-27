<%@page import="com.company.*"%>
<%@page import="java.util.*"%>
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
int sid=Integer.parseInt(request.getParameter("sid"));
String sname=request.getParameter("sname");

SubjectPOJO sb=new SubjectPOJO();
sb.setSid(sid);
sb.setSname(sname);

SubjectDAO dao=new SubjectDAO();
int row=dao.insertSub(sb);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>