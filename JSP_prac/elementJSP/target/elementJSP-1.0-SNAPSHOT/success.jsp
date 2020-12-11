<%--
  Created by IntelliJ IDEA.
  User: Chz
  Date: 10/12/20
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login success</title>
</head>
<body>
<h3>Login success!</h3>
userid parameter: <%=request.getParameter("userid")%><br>
username: <%=request.getParameter("username")%><br>
password: <%=request.getParameter("password")%><br>
</body>
</html>
