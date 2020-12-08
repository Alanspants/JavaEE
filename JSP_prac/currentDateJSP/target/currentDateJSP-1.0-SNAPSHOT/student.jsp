<%--
  Created by IntelliJ IDEA.
  User: Chz
  Date: 8/12/20
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student's form</title>
</head>
<body>
    <table border="1">
        <tr>
            <td>Student's ID</td>
            <td>Name</td>
        </tr>
        <%
            for(int i = 0; i < 10; i++){
                String name = "alan" + i;
        %>
        <tr>
            <td><%=i%></td>
            <td><%=name%></td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
