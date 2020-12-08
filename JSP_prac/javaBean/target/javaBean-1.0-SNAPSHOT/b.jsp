<%--
  Created by IntelliJ IDEA.
  User: Chz
  Date: 8/12/20
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>B page</title>
</head>
<body>
<jsp:useBean id="userBean" scope="session" class="com.example.javaBean.User" />
<jsp:getProperty name="userBean" property="userid" />
<jsp:getProperty name="userBean" property="username"/>
</body>
</html>
