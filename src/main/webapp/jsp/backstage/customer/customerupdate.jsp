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
    <script type="text/javascript" src="<%=basePath%>jsp/backstage/js/jquery.js"></script>
    <script type="text/javascript">
        //用于弹出窗口，将服务器返回的数据提交，本处用于账户提交后的状态
        $(document).ready(function(){
            function isNumber(value) { //验证是否为数字
                if(value != "") {
                    var patrn = /^(-)?\d+(\.\d+)?$/;
                    if(patrn.exec(value) == null || value == "") {
                        return false;
                    } else {
                        return true;
                    }
                } else {
                    return false;
                }
            }
            $("#submit_button").click(function(){
                var status = true; //默认表单验证通过
                //执行表单验证
                //对产品名称进行验证
                //对产品名称进行验证
                if(status == true) { //如果表单验证通过
                    //使用ajax执行登录操作
                    //第一个参数指要访问的服务端地址；
                    //第二个参数，指要传递的表单的数据，$("#myForm").serialize()
                    $.post("<%=basePath %>DoUpdateCustomer",
                        $("#myForm").serialize(),
                        function(data){
                            //根据服务端返回来的值，判断登录是否成功
                            if(data=="ok"){
                                alert("修改成功！");
                                //清空kindeditor内容
                                KindEditor.html("#content", "");
                            }else{
                                alert("错误");
                            }
                        });
                }
            });
        });


        var mesg='${requestScope.mesg}';
        if(mesg!=''){
            alert(mesg);
        }
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
    <form id="myForm">
        <ul class="forminfo">
            <input name="c_id" type="hidden" value="${requestScope.customer.c_id }"/>

            <li><label>游客帐户名：</label><input name="c_user" type="text" class="dfinput" value="${requestScope.customer.c_user }" /></li><br/>
            <li><label>昵称：</label><input name="c_name" type="text" class="dfinput" value="${requestScope.customer.c_name }"/></li>
            <li><label>个性签名：</label><input name="c_sign" type="text" class="dfinput" value="${requestScope.customer.c_sign }"/></li>
            <li><label>密码：</label><input name="c_pass" type="text" class="dfinput" value="${requestScope.customer.c_pass }"/></li>
            <li><label>&nbsp;</label><input id="submit_button" type="button" class="btn" value="确定修改"/></li>

        </ul>
    </form>
</div>


</body>
</html>
