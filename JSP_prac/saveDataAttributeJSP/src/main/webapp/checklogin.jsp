<%--
  Created by IntelliJ IDEA.
  User: Chz
  Date: 10/12/20
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>check login</title>
</head>
<body>
<%
    String name = request.getParameter("username");
    String password = request.getParameter("password");

    if(name.equals("alan") && password.equals("123")){
        request.setAttribute("username", name);
        request.setAttribute("password", password);


        request.getRequestDispatcher("success.jsp").forward(request,response);
    } else {
        response.sendRedirect("login.jsp");
    }
%>
</body>
</html>
