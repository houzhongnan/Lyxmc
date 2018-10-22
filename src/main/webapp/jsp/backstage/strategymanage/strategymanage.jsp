
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/10/9
  Time: 20:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>景点列表</title>
    <link href="<%=basePath%>jsp/backstage/css/style.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="<%=basePath%>jsp/backstage/js/jquery.js"></script>
    <script type="text/javascript">
        var message='${requestScope.myMessage}';
        //如果没有收到服务端发来的信息，那么就不弹出对话框
        if(message!=''){
            alert(message);
        }
        /*
        var status=confirm("确认要删除该账户吗？");
        if(status==true){
            alert("确认");
        }else{
            alert("删除");
        }
         */

        $(document).ready(function(){



        });
    </script>
</head>
<body>
<div class="a_top">
    <div  class="sty" style="width:100%;height:50px; background:url(<%=basePath%>jsp/backstage/images/banner/back.jpg) no-repeat">
    <ul class="toolbar">

        <%--<li><img src="<%=basePath%>jsp/backstage/images/banner/bannertop.jpg"></li>--%>
        <li><img src="<%=basePath%>jsp/backstage/images/banner/sy.png"  ><a href=""><span class="a_text"></span> <b>首页</b></a></li>
        <li class="click">
            <a href="toAdminadd">
                <span><img src="<%=basePath%>jsp/backstage/images/banner/add.png" /></span><span class="a_text"><b>添加管理账户</b></span>
            </a>
        </li>
        </div>
    </ul>
</div>

<table class="tablelist">
<thead>
<tr>
    <th style="width: 5%"><input name="" type="checkbox" value="" checked="checked"></th>
    <th style="width: 20%">景点名称</th>
    <th style="width: 20%">位置</th>
    <th style="width: 20%">食品</th>
    <th style="width: 25%">食品</th>
    <th>选项</th>
</tr>
</thead>
    <tbody>
   <c:forEach var="admin" items="${requestScope.list}">
<tr>
    <td ><input name="" type="checkbox" value="" /></td>
    <td >${admin.a_username}</td>
    <td >${admin.a_name}</td>
    <td><fmt:formatDate value="${admin.a_createTime}" pattern="yyyy年MM月dd日 HH:mm"/></td>
    <td><a href="" class="tablelink">编辑</a>   <a href="<%=basePath%>backstage/adminManage/doDeleteAdmin?id=${admin.id}" class="tablelink">删除</a> </td>
</tr>

    </c:forEach>
    </tbody>

</table>
<div class="pagin">
    <div class="message">共<i class="blue">${fn:length(list)}</i>条记录，当前显示第&nbsp;<i class="blue">2&nbsp;</i>页</div>
    <ul class="paginList">
        <li class="paginItem"><a href="javascript:;"><span class="pagepre"></span></a></li>
        <li class="paginItem"><a href="javascript:;">1</a></li>
        <li class="paginItem current"><a href="javascript:;">2</a></li>
        <li class="paginItem"><a href="javascript:;">3</a></li>
        <li class="paginItem"><a href="javascript:;">4</a></li>
        <li class="paginItem"><a href="javascript:;">5</a></li>
        <li class="paginItem more"><a href="javascript:;">...</a></li>
        <li class="paginItem"><a href="javascript:;">10</a></li>
        <li class="paginItem"><a href="javascript:;"><span class="pagenxt"></span></a></li>
    </ul>
</div>
</body>
</html>
