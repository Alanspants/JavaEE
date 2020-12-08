<%@ page import="javax.management.remote.rmi._RMIConnection_Stub" %>
<%@ page import="java.sql.SQLOutput" %><%--
  Created by IntelliJ IDEA.
  User: Chz
  Date: 8/12/20
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Java_code</title>
</head>
<body bgcolor="#ffffff">
    <%
        String s = "大家好";
        for (int i = 0; i < 3; i++){
            System.out.println(s);
            out.print(s);
        }
    %>
</body>
</html>
