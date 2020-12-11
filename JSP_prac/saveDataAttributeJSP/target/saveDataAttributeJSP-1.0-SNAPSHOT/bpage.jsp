<%--
  Created by IntelliJ IDEA.
  User: Chz
  Date: 10/12/20
  Time: 21:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>B page</title>
</head>
<body>
<%
    request.setCharacterEncoding("utf-8");
    String pname = request.getParameter("username");

    // Save data to session
    session.setAttribute("sname", pname);
    // Save data to application
    application.setAttribute("aname", pname);
%>
    Username: <%=pname%>
    <br/>
    <a href="cpage.jsp?username=<%=pname%>%>">Jump to C page</a>
</body>
</html>
