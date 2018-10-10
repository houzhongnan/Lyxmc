<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>后台管理登录界面</title>
  <%--  <script src="<%=basePath%>jsp/backstage/lib/jquery/jquery-1.11.0.min.js"></script>
    <script src="<%=basePath%>jsp/backstage/lib/jquery/jquery-1.12.4.js"></script>--%>

    <link href="<%=basePath%>jsp/backstage/css/alogin.css" rel="stylesheet" type="text/css" />
    <script src="<%=basePath%>jsp/backstage/js/jquery-1.12.4.js"></script>
    <script language="javascript">

        $(function(){



            $("#login_button").click(function() {
                //使用ajax执行登录操作
                //第一个参数指要访问的服务端地址；
                //第二个参数，指要传递的表单的数据，$("#myForm").serialize()
                //第三个参数，function(data)用于接收服务端返回来的值，data

                $.post("<%=basePath%>backstage/loginback",
                    $("#myForm").serialize(),
                    function(data) {
                        //根据服务端返回来的值，判断登录是否成功
                        if (data.status == 1) {
                           // alert("登录成功");
                            location.href = '<%=basePath%>backstage/backindex';
                        } else {
                            alert("登录失败");
                        }
                    });
            });

            $('.loginbox').css({ 'position': 'absolute', 'left': ($(window).width() - 692) / 2 });
            $(window).resize(function() {
                $('.loginbox').css({ 'position': 'absolute', 'left': ($(window).width() - 692) / 2 });
            })
        });
    </script>
</head>
<body>
    <form id="myForm" method="post">
    <div class="Main">
        <ul>
            <li class="top"></li>
            <li class="top2"></li>
            <li class="topA"></li>
            <li class="topB"><span><img src="images/login/logo.gif" alt="" style="" /></span></li>
            <li class="topC"></li>
            <li class="topD">
                <ul class="login">
                    <li><span class="left login-text">用户名：</span>
                        <input id="Text1" type="text" class="txt" name="a_username" value="user"/>
                     
                    </li>
                    <li><span class="left login-text">密码：</span>
                       <input id="Text2" type="password" class="txt" name="a_password" value="123456" />
                    </li>
					
                </ul>
            </li>
            <li class="topE"></li>
            <li class="middle_A"></li>
            <li class="middle_B"></li>
            <li class="middle_C" ><input type="button" id="login_button"  class="btn" value="登录" style="background-color: #2aabd2;"/></li>
            <li class="middle_D"></li>
            <li class="bottom_A"></li>
            <li class="bottom_B">旅游网站后台管理系统&nbsp;&nbsp;www.php.com</li>
        </ul>
    </div>
    </form>
</body>
</html>