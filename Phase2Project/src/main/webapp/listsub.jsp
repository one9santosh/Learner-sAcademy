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

<%SubjectDAO dao=new  SubjectDAO();
List<SubjectPOJO> emp=(List<SubjectPOJO>)dao.display();
%>
<tr><th>Id</th><th>Subject</th><th>Action</th></tr>
<%for(SubjectPOJO e:emp){ %>
<tr><td><%=e.getSid() %></td><td><%=e.getSname() %></td><td><a href="editsub.jsp">Edit</a></td><td><a href="deletesub.jsp">Delete</a></td></tr>
<%} %>

</table> <br><br><br>
<a href="subject.jsp">Back to Subject</a>
</center>

</body>
</html>