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

String sname=request.getParameter("sname");
int sid=Integer.parseInt(request.getParameter("sid"));
SubjectPOJO sb=new SubjectPOJO();

sb.setSname(sname);
sb.setSid(sid);
SubjectDAO dao=new SubjectDAO();
int row=dao.updateSub(sb);
if(row>0){
	response.sendRedirect("listsub.jsp");
}
else{
	response.sendRedirect("home.jsp");
}

%>
</body>
</html>