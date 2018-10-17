<%--
  Created by IntelliJ IDEA.
  User: 徐林
  Date: 2018/10/12
  Time: 23:57
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<table class="tablelist">
    <thead>
    <tr>

        <th style="width: 30%">账户名</th>

        <th style="width: 25%">密码</th>

    </tr>
    </thead>
    <tbody>
<c:forEach var="testOfEach" items="${requestScope.list}">
        <tr>

            <td >${testOfEach.username}</td>
            <td >${testOfEach.password}</td>
            <td></td>

        </tr>
</c:forEach>

    </tbody>

</table>
<div class="pagin">
    <div class="message">共<i class="blue"></i>条记录，当前显示第&nbsp;<i class="blue">${index}&nbsp;</i>页</div>
    <ul class="paginList">
<c:forEach var="listOfEach" end="${requestScope.pagecount}" step="1" begin="1">

        <li class="paginItem"><a href="<%=basePath%>Reception/strategyManage/test?index=${listOfEach}">${listOfEach}</a></li>
</c:forEach>

    </ul>
</div>
</body>
</html>
