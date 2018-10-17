<%--
  Created by IntelliJ IDEA.
  User: 徐林
  Date: 2018/10/16
  Time: 16:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%response.sendRedirect(basePath+"toCustomer"); %>
</body>
</html>
