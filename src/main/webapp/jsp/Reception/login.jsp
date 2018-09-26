<!DOCTYPE html>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>

	<head>
		<meta charset="UTF-8">
		<title>用户登录</title>
		<link rel="stylesheet" href="css/login.css" />
		<script src="js/jquery-1.12.4.js"></script>

		<script language="javascript">
            $(function() {



                $("#login_button").click(function() {
                    //使用ajax执行登录操作
                    //第一个参数指要访问的服务端地址；
                    //第二个参数，指要传递的表单的数据，$("#myForm").serialize()
                    //第三个参数，function(data)用于接收服务端返回来的值，data
                    $.post("<%=basePath%>/login",
                        $("#myForm").serialize(),
                        function(data) {
                            //根据服务端返回来的值，判断登录是否成功
                            if(data.status==1){
                                location.href="<%=basePath%>admin/index";
                            }else{
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
    <!--最外层div-->
    <div id="chouhua">
		<div class="q-login-modal">
			<div class="q-layout-table">
				<div class="q-layout-cell">
                <!--注册登陆合并模块开始-->
					<div class="q-login-container">
					  <div class="q-login-content-wrapper">
							<div class="q-login-close"><i class="frame-iconfont frame-icon-cross" onClick="custom_close()" ></i></div>
                            <script language="javascript">
// 这个脚本是 ie6和ie7 通用的脚本
function custom_close(){
window.close();

}
</script>
						
							<div class="q-login-content">
                            <!--登陆模块开始-->
								<div class="q-login-layout"  id="signin"  style="display: none;">
									<div class="q-login-form-tip"><span class="tip-error" >
									</span></div>
									
										<!--登陆标题-->
                                        <div class="q-login-title"><span>账户登陆</span></div>
										
										
									
									<div class="q-login-form pt50">
										<!--登陆用户名输入框-->
										<div class="q-login-form-control">
                                        <label class="hide">用户名</label><input type="text" title="用户名" maxlength="15" placeholder="用户名" class="input">
                                        
                                        <!--空格div（不加的话会跳上来）-->
											<div class="input-tip">
											</div>
										</div>
										<div class="q-login-form-control" >
											<!--登陆密码的输入框-->
                                            <div class="q-login-form-control"><label class="hide">密码</label><input type="password" title="密码" placeholder="密码" class="input"></div>
											<div class="input-tip"><a href="//passport.qyer.com/account/forget" data-bn-ipg="web-login-page-getpassword" target="_top" class="remember-link fr">忘记密码</a>
											</div>
										</div>
										
										<div class="q-login-form-control"><button class="btn"><span>登录</span></button></div>
									</div>
									 <!--切换到登陆的div-->
									<div class="q-login-bottom"><span class="fl"><span>没帐号？</span>
										<a href="javascript::" onClick="zhuce()">立即注册</a>
										</span><span class="fr"><a href="javascript:;" class="gray" style="display: none;">切换回 帐号登录</a></span></div>
								</div>
                                <!--登陆模块结束-->
                                 <!--注册模块开始-->
								<div class="q-login-layout" id="signup" >
                                <!--注册标题-->
                                <div class="q-login-title"><span>注册</span></div>
									<div class="q-login-form-tip">
									</div>
                                   
									<div class="q-login-form">																				
										<!--注册用户名输入框-->
										<div class="q-login-form-control"><label class="hide">用户名</label><input type="text" title="用户名" maxlength="15" placeholder="起一个具有辨识度的用户名" class="input">
                                        <!--空格div（不加的话会跳上来）-->
											<div class="input-tip"></div>
										</div>
                                        <!--注册用户输入密码-->
										<div class="q-login-form-control"><label class="hide">密码</label><input type="password" title="密码" maxlength="16" placeholder="输入8-16位密码，需包含字母及数字" class="input">
                                         <!--空格div（不加的话会跳上来）-->
											<div class="input-tip">	</div>
									</div>
                                                                                <!--注册的按钮-->
										<div class="q-login-form-control"><button  class="btn"><span>注册</span></button></div>
 <!--切换到注册的div-->
									<div class="q-login-bottom"><span class="fl">
      已有帐号？<a href="javascript:;" onClick="denlu()">登录</a></span></div>
									
								</div>
							</div>
                            <!--注册模块结束-->
						</div>
					</div>
				</div>
                <!--注册登陆合并模块结束-->
			</div>
		</div></div>
       
	</body>

<script>
 function zhuce() {
            $("#signin").hide();
            $("#signup").show();
 }
  function denlu() {
            $("#signup").hide();
            $("#signin").show();
 }
 $(".frame-iconfont frame-icon-cros").unload(function () {
alert("关闭");
}) 
</script>
</html>