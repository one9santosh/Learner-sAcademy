<%@page import="com.company.*"%>
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

String tname=request.getParameter("tname");
int tid=Integer.parseInt(request.getParameter("tid"));
TeacherPOJO sb=new TeacherPOJO();

sb.setTname(tname);
sb.setTid(tid);
TeacherDAO dao=new TeacherDAO();
int row=dao.updateTch(sb);
if(row>0){
	response.sendRedirect("listtch.jsp");
}
else{
	response.sendRedirect("home.jsp");
}

%>
</body>
</html>