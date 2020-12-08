<%--
  Created by IntelliJ IDEA.
  User: Chz
  Date: 8/12/20
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>A page</title>
</head>
<body>
<jsp:useBean id="userBean" scope="session" class="com.example.javaBean.User" />
<jsp:setProperty name="userBean" property="userid" value="1000"/>
<jsp:setProperty name="userBean" property="username" value="Alan"/>

<form action="b.jsp" method="post">
    <input type="submit" value="Redirect to B">
</form>
</body>
</html>
