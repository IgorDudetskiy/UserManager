<%@ page import="org.example.User" %><%--
  Created by IntelliJ IDEA.
  User: Igor
  Date: 3/10/2023
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show info about user</title>
</head>
<body>
<%@include file="header.html" %>
<br>
<br>

<%
    User user = (User) request.getAttribute("user");
%>
<p> Id: <%=user.getId()%></p>
<p> Username: <%=user.getUsername()%></p>
<p> Password: <%=user.getPassword()%></p>
</body>
</html>
