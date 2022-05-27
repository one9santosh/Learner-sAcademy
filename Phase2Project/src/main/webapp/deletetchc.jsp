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
int tid=Integer.parseInt(request.getParameter("tid"));
TeacherPOJO sb = new TeacherPOJO();
sb.setTid(tid);
TeacherDAO dao=new TeacherDAO();
int row=dao.deleteTch(sb);

if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>