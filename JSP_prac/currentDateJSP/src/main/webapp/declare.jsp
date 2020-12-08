<%--
  Created by IntelliJ IDEA.
  User: Chz
  Date: 8/12/20
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Declare</title>
</head>
<body>
    <%! String str = "大家好"; %>
    <%!
        public String strTest(String str){
            return str + " 好呀";
        }
    %>
    <%= str %><br>
    <%= strTest(str) %>

</body>
</html>
