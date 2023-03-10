<%@ page import="org.example.User" %><%--
  Created by IntelliJ IDEA.
  User: Igor
  Date: 3/10/2023
  Time: 15:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update existing user</title>
</head>
<body>
<%@include file="header.html" %>
<br>
<br>
<form action="/user/create" method="post">

  <%
    User user = (User) request.getAttribute("user");
  %>
  <table>
    <tr>
      <td>
        <label for="id">Id: </label>
      </td>
      <td>
        <input type="text" id="id" name="id" value="<%=user.getId()%>" disabled>
      </td>

    </tr>
    <tr>
      <td>
        <label for="username"> Username:</label>
      </td>
      <td>
        <input type="text" id="username" name="username" value="<%=user.getUsername()%>">
      </td>
    </tr>
    <tr>
      <td>
        <label for="password"> Password:
        </label>
      </td>
      <td>
        <input type="password" id="password" name="password" value="<%=user.getPassword()%>">
      </td>
    </tr>
    <tr>
      <td>
        <input type="submit" value="Update">
      </td>
      <td>
        <input type="reset" value="Clear">
      </td>
    </tr>

  </table>


</form>
</body>
</html>
