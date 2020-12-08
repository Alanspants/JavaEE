<%--
  Created by IntelliJ IDEA.
  User: Chz
  Date: 8/12/20
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP表达式</title>
</head>
<body>
<h2>JSP表达式实例</h2>
<h4>当前时间：<%= new java.util.Date()%></h4>
<h4>传输协议：<%= request.getProtocol()%></h4>
</body>
</html>
