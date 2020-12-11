<%--
  Created by IntelliJ IDEA.
  User: Chz
  Date: 10/12/20
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>success</title>
</head>
<body>
从request的username属性取出数据：<%=request.getAttribute("username")%>
从request的password属性取出数据：<%=request.getAttribute("password")%>
</body>
</html>
