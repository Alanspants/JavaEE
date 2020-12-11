<%--
  Created by IntelliJ IDEA.
  User: Chz
  Date: 10/12/20
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--登陆验证--%>
<%
    String name = request.getParameter("username");
    String password = request.getParameter("password");

    if (name.equals("alan") && password.equals("123")) {
        //跳转成功页面
%>
<jsp:forward page="success.jsp">
    <jsp:param name="userid" value="1000"/>
</jsp:forward>
<%} else {%>
<jsp:forward page="login.jsp"></jsp:forward>
<%}%>

</body>
</html>
