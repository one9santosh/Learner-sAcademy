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
int id=Integer.parseInt(request.getParameter("id"));
String name=request.getParameter("name");
String dob =request.getParameter("dob");
String address =request.getParameter("address");
String phone =request.getParameter("phone");
String classes =request.getParameter("class");


StudentPOJO sb=new StudentPOJO();
sb.setId(id);
sb.setName(name);
sb.setDob(dob);
sb.setAddress(address);
sb.setPhone(phone);
sb.setClasses(classes);


StudentDAO dao=new StudentDAO();
int row=dao.insertStd(sb);
if(row>0){
	response.sendRedirect("success.jsp");
}
else{
	response.sendRedirect("fail.jsp");
}

%>
</body>
</html>