<%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: Chz
  Date: 8/12/20
  Time: 13:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>今天的日期</title>
</head>
<body>
<%
    DateFormat df = new SimpleDateFormat("yyyy年mm月dd日");
    Date date = new Date();
    String strDate = df.format(date);
%>
今天的日期：<%=strDate%>
<br/>
</body>
</html>
