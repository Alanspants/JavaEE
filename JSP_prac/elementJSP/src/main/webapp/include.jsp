<%--
  Created by IntelliJ IDEA.
  User: Chz
  Date: 10/12/20
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Include example</title>
</head>
<body>
使用include指令<br><br>
<%@include file="one.jsp"%><br>
<%@include file="two.jsp"%><br>
<hr>
使用include动作<br><br>
<jsp:include page="one.jsp" flush="true">
    <jsp:param name="name" value="alan"/>
</jsp:include>

<jsp:include page="two.jsp" flush="true" /><br>

<%--<jsp:include> 和 <%@include%> 的区别，前者包含的内容是可以动态改变的，它在执行时才能确定。--%>
<%--    而后者包含的内容是固定不变的，一经编译，就不能改变了--%>

</body>
</html>
