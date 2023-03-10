<%--
  Created by IntelliJ IDEA.
  User: Igor
  Date: 3/10/2023
  Time: 15:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create user</title>
</head>
<body>

<%@include file="header.html" %>
<br>
<br>

<form action="/user/create" method="post">
    <table>
        <tr>
            <td>
                <label for="username"> Username
                </label>
            </td>
            <td>
                <input type="text" id="username" name="username">
            </td>
        </tr>
        <tr>
            <td>
                <label for="password"> Password:
                </label>
            </td>
            <td>
                <input type="password" id="password" name="password">
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="Create">
            </td>
            <td>
                <input type="reset" value="Clear">
            </td>
        </tr>

    </table>


</form>

</body>
</html>
