<%--
  Created by IntelliJ IDEA.
  User: Chz
  Date: 10/12/20
  Time: 21:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>C page</title>
</head>
<body>
<%
    String sname = (String) session.getAttribute("sname");
    String aname = (String) application.getAttribute("aname");
%>
    Username from session: <%=sname%><br/>
    Username from application: <%=aname%><br/>
</body>
</html>
