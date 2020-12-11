<%--
  Created by IntelliJ IDEA.
  User: Chz
  Date: 10/12/20
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login page</title>
</head>
<body>
<form method="post" action="checklogin.jsp">
    <table>
        <tr>
            <td>Username:</td>
            <td>
                <input type="text" name="username" value="">
            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <input type="password" name="password" value="">
            </td>
        </tr>
        <tr colspan="2">
            <td>
                <input type="submit" value="login">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
