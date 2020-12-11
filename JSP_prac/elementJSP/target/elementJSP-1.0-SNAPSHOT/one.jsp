<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body>
<a href="two.jsp">这是two.html中的文字</a>
<%
    String name = request.getParameter("name");
%>
传递过来的参数：<%=name%> <br>
</body>