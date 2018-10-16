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
    <title>管理员列表</title>
    <link href="<%=basePath%>jsp/backstage/css/style1.css " type="text/css" rel="stylesheet" />
    <link href="<%=basePath%>jsp/backstage/css/style.css " type="text/css" rel="stylesheet" />
 <script type="text/javascript" src="jsp/backstage/js/jquery.js"></script>
    <script>
        var message='${requestScope.mymessage}';
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

       /* $(document).ready(function(){



        });*/
    </script>
</head>
<body>
<div class="a_top">
    <div  class="sty" style="width:100%;height:50px; background:url(<%=basePath%>jsp/backstage/images/banner/back.jpg) no-repeat">
    <ul class="toolbar">

        <%--<li><img src="<%=basePath%>jsp/backstage/images/banner/bannertop.jpg"></li>--%>
        <li><img src="<%=basePath%>jsp/backstage/images/banner/sy.png"  ><a href="<%=basePath%>jsp/backstage/index.jsp/"> <b>首页</b></a></li>

        </div>
    </ul>
</div>

<div class="formbody">
    <div class="formtitle"></div>
    <form action="doCustomeradd" method="post">
        <ul class="forminfo">
            <li><label>游客帐户名：</label><input name="c_user" type="text" class="dfinput" value="" /></li><br/>
            <li><label>昵称：</label><input name="c_name" type="text" class="dfinput" value=""/></li>
            <li><label>出生年月：</label><input name="c_years" type="date" class="dfinput" value=""/></li>

            <li><label>密码：</label><input name="c_pass" type="text" class="dfinput" value=""/></li>
            <li><label>个性签名：</label><textarea name="c_sign" type="text" class="dfinput" value="" style="height: 50px;"></textarea></li>
            <li><label>&nbsp;</label><input name="btn" type="submit" class="btn" value="确认添加"/></li>

        </ul>
    </form>
</div>


</body>
</html>
