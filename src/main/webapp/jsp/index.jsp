<<%--
  Created by IntelliJ IDEA.
  User: 徐林
  Date: 2018/10/8
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="<%=basePath%>Reception/sceneryManage/toManageScenery">前台首页</a>
</body>
</html>
