<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/1
  Time: 19:36
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
<a href="Reception/strategyManage/toManageStrategy"> <h1>旅游网页前台</h1></a>
<a href="<%=basePath%>jsp/backstage/login.jsp"><h1>旅游网页后台</h1></a>
<a href="<%=basePath%>Reception/index"><h1>旅游网页后台</h1></a>
</body>
</html>
