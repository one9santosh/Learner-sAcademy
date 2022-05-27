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
<center>
<table border="1">

<%TeacherDAO dao=new  TeacherDAO();
List<TeacherPOJO> emp=(List<TeacherPOJO>)dao.display();
%>
<tr><th>Id</th><th>Teacher</th><th>Action</th></tr>
<%for(TeacherPOJO e:emp){ %>
<tr><td><%=e.getTid() %></td><td><%=e.getTname() %></td><td><a href="edittch.jsp">Edit</a></td><td><a href="deletetch.jsp">Delete</a></td></tr>
<%} %>

</table> <br><br><br>
<a href="teacher.jsp">Back to Teacher</a>
</center>
</body>
</html>