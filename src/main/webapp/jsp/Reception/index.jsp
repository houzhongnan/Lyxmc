<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
		<script language="JavaScript" src="<%=basePath %>jsp/Reception/js/jquery.js"></script>
		<script language="javascript">
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
                        $.post("<%=basePath %>Reception/userManage/DoAddUser",
                            $("#myForm").serialize(),
                            function(data){
                                //根据服务端返回来的值，判断登录是否成功
                                if(data=="ok"){
                                    alert("注册成功！");
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
	<script type="text/javascript" src="<%=basePath %>jsp/Reception/js/jquery-1.12.4.js"></script>
	<link rel="stylesheet" href="<%=basePath %>jsp/Reception/css/bookstore.css" />
	<link rel="stylesheet" href="<%=basePath %>jsp/Reception/css/font-awesome.css" />
	<link rel="stylesheet" href="<%=basePath %>jsp/Reception/css/index.css" />
	<link rel="stylesheet" href="<%=basePath %>jsp/Reception/css/login.css" />
	<link rel="stylesheet" href="<%=basePath %>jsp/Reception/css/main.css" />
	<script type="text/javascript" src="<%=basePath %>jsp/Reception/js/jquery-1.7.2.min.js"></script>
   <!-- <link rel="stylesheet" type="text/css" href="<%=basePath %>jsp/Reception/css/banner.css">-->
	<script src="<%=basePath %>jsp/Reception/js/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="<%=basePath %>jsp/Reception/js/index.js"></script>

	<body>
		<!--最外层div-->
		<div class="container">
		<!--最外层遮箱效果-->	
<div class="checkbox">
			<!--上部分开始-->
			<div class="q-home">
				<!--无样式div-->
				<div class="q-container">
					<!--无样式div-->

					<!--上部分最外层，css样式：最高层、宽度等-->
					<header class="q-header-wrapper">

						<div class="q-header">
							<!--头部开始-->
							<div class="q-header-nav-wrapper">
								<!--头部左边内容（Nav）开始-->

								<div class="q-header-logo">
									<!--logo div开始-->
									<a href="#" data-bn-ipg="head-logo">
										<!--logo-->
										<img src="<%=basePath %>jsp/Reception/img/logo.png" width="90" height="50">
									</a>
								</div>
								<!--logodiv结束-->
								<!--Nav开始-->
								<ul class="q-header-nav">

									<li class="nav-list">
										<a href="<%=basePath%>Reception/destinationManage/toManageDestination" class="nav-span"><span>目的地</span>

										</a>

									</li>

									<li class="nav-list">
										<a href="<%=basePath%>Reception/mealManage/toManageMeal" class="nav-span"><span>下馆子</span>

										</a>

									</li>

									<li class="nav-list nav-list-layer">
										<a href="#" class="nav-span"><span>找乐子</span>
										</a>

						 			</li>

									<li class="nav-list">
										<a href="<%=basePath%>Reception/trafficManage/toManageTraffic" class="nav-span"><span>交通行</span>
										</a>
									</li>

									<li class="nav-list">
										<a href="<%=basePath%>Reception/hotelManage/toManageHotel" class="nav-span"><span>住哪里</span>
										</a>
									</li>

									<li class="nav-list nav-lists">
										<iframe id="fancybox-frame" name="fancybox-frame1537327510878" height="70" frameborder="0" scrolling="no" hspace="0" src="<%=basePath %>jsp/Reception/weather.jsp"></iframe>
								</ul>
								<!--Nav结束-->
							</div>
							<!--头部左边内容（Nav）结束-->

							<!--头部右边内容（搜索框、第三方登入）开始-->
							<div class="q-header-user-wrapper">
								<!--搜索框-->
								<div class="q-header-search">
									<form action="/index.jsp/search.qyer.com/index" method="get">
										<input name="wd" type="text" autocomplete="off" value="" class="txt-search"><button type="submit" class="btn-search"><i class="frame-iconfont frame-icon-search"></i><span>搜索</span></button></form>

								</div>
								<!--搜索框-->
								<span class="q-header-cut">|</span>
								<!--第三方登入内容开始-->
								<div class="q-header-user-status">
									<div class="login-wrap">
										<a href="#" data-bn-ipg="index-head-un-qq"><i class="frame-iconfont frame-icon-qq"></i></a>
										<!--QQ登入-->
										<a href="#" data-bn-ipg="index-head-un-weibo"><i class="frame-iconfont frame-icon-weibo"></i></a>
										<!--微信登入-->
										<a href="#" data-bn-ipg="index-head-un-wechat"><i class="frame-iconfont frame-icon-wechat"></i></a>
										<!--微博登入-->
										<!--<a href="#" class="login-link" onClick="up()">注册</a>
										<!--login-->
										<!--<a href="#" class="login-link" onClick="mm()">登录</a>
										<!--login-->
									</div>
								</div>
								<!--第三方登入内容结束-->

							</div>
							<!--头部右边内容（搜索框、第三方登入）结束-->
						</div>
						<!--头部结束-->
					</header>

				</div>
				<!--无样式div结束-->
<!--banner开始-->
				<div class="home-banner">
					<!--banner外套--->
					<div class="carousel" style="height: 563.333px;">
						<!--banner内容开始-->
						<div class="carousel-inner">
							<!--无意义div-->
							<div>
					
							<!--图片轮换-->
         
<div class="banner" id="b04">
	<ul>
		<li class="slider-item"><a href="#"><img src="<%=basePath %>jsp/Reception/img/01.jpg" alt="小米进军泡面界，5块一桶还包邮？雷军回应；92女生：360关闭直播不诚恳，需周鸿祎道歉；传阿里即将控股A站|早报"><span class="slider-title"><em>小米进军泡面界，5块一桶还包邮？雷军回应；92女生：360关闭直播不诚恳，需周鸿祎道歉；传阿里即将控股A站|早报</em></span></a></li>
		<li class="slider-item"><a href="#"><img src="<%=basePath %>jsp/Reception/img/02.jpg" alt="如果你是创业者，你或许应该琢磨琢磨投资人是怎么想的"  ><span class="slider-title"><em>如果你是创业者，你或许应该琢磨琢磨投资人是怎么想的</em></span></a></li>
		<li class="slider-item"><a href="#"><img src="<%=basePath %>jsp/Reception/img/03.jpg" alt="傅盛：生物学思维给我的四个启示"  ><span class="slider-title"><em>傅盛：生物学思维给我的四个启示</em></span></a></li>
		<li class="slider-item"><a href="#"><img src="<%=basePath %>jsp/Reception/img/04.jpg" alt="重仓何小鹏" ><span class="slider-title"><em>重仓何小鹏</em></span></a></li>
		<li class="slider-item"><a href="#"><img src="<%=basePath %>jsp/Reception/img/05.jpg" alt="深潜：王石的创业"  ><span class="slider-title"><em>深潜：王石的创业</em></span></a></li>
	</ul>
	
</div>

<script src="<%=basePath %>jsp/Reception/js/jquery-1.11.1.min.js"></script>
<script src="<%=basePath %>jsp/Reception/js/unslider.min.js"></script>
								
							</div>
						</div>
						<!--banner内容结束-->
					<!--banner搜索框开始-->
					<div class="q-search active-place">
						<!--banner搜索框外套开始-->
						<div class="q-search-wrapper">
							<!--banner搜索框 分类开始-->
							<div class="tab clearfix">
								<a href="meal(下馆子)/meal.html" class="tab-place"><span>目的地</span></a>
								<a href="#" class="tab-plan"><span>下馆子</span></a>
								<a href="#" class="tab-z"><span>钓凯子</span></a>
								<a href="#" class="tab-hotel"><span>撩妹子</span></a>
							</div>
							<!--banner搜索框 分类结束-->

							<div class="panel">
								<div class="panel-cont">
									<div class="panel-item" style="display:;">
										<div class="form-control">
											<form action="http://www.qyer.com/video/higo/329" target="_blank" method="post"><input type="text" placeholder="马尔代夫" autocomplete="off" value="" class="txt focus placesearch_txt"><button type="submit" data-bn-ipg="index-top-place-search" class="btn">搜索</button></form>
										</div>
									</div>

								</div>
							</div>
						</div>
						<!--banner搜索框外套结束-->

					</div>
					<!--banner搜索框结束-->

				</div>
				<!--banner结束-->
					<!--banner外套结束-->

				<!--今日推荐部分开始-->
				<div class="section" style="background-color: #2dd382;">
					<!--今日推荐div外套-->
					<div class="wrapper">
						<h2 class="title">今日推荐</h2>
						<!--模块标题-->

						<div class="recommend">

							<ul class="gradually_col4_show">
								<c:forEach var="strategyOfEach" items="${requestScope.list}">
                                    <li>
                                        <div data-type="lm" class="item">
                                            <div class="img">
                                                <a data-bn-ipg="index-guess-lm-p5"  href="javascript:0;" class="cd-popup-trigger0">
                                                    <img src="${strategyOfEach.s_image}" >
                                                    <div class="tag"><span class="bt">${strategyOfEach.s_place}</span></div>
                                                </a>
                                            </div>
                                            <div class="info">
                                                <a data-bn-ipg="index-guess-video-p1" href="#" target="_blank">
                                                    <div class="subtitle">
                                                        <p>${strategyOfEach.s_name}</p>
                                                    </div>
                                                    <div class="bottom"><span class="fr">${strategyOfEach.s_name}</span><span class="f14">${strategyOfEach.s_name}</span></div>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
								</c:forEach>
								<li>
									<!--今日推荐登录注册的小模块开始-->
									<div id="login">
										<div data-type="login" class="login">
											<div class="login-title">
												<h3>让我们更懂你</h3>
												<p>拥有账号，获得更准确的推荐</p>
											</div>
											<div class="login-link" style="text-align: center;">
												<a data-bn-ipg="index-guess-un-register" href="javascript:;" class="register-btn register-phone" onClick="up()">立即注册</a>
												<a data-bn-ipg="index-guess-un-register" href="#" class="login-mail" onClick="mm()">登录</a>
												</span>
											</div>
											<div class="auth-login" style="text-align: center;">
												<a data-bn-ipg="index-guess-un-qq" href="#" class="login-auth iconfont-home icon-cir-qq"></a>
												<a data-bn-ipg="index-guess-un-weibo" href="#" class="login-auth iconfont-home icon-cir-weibo"></a>
												<a data-bn-ipg="index-guess-un-wechat" href="#" class="login-auth iconfont-home icon-cir-weixin"></a>
											</div>
										</div>
									</div>
									<!--今日推荐登录注册的小模块结束-->
								</li>
								<c:forEach var="strategyOfEach" items="${requestScope.list2}">
								<li>
									<div data-type="lm" class="item">
										<div class="img">
											<a data-bn-ipg="index-guess-lm-p5"  href="javascript:0;" class="cd-popup-trigger0">
                                              <img src="${strategyOfEach.s_image}" >
												<div class="tag"><span class="bt">${strategyOfEach.s_place}</span></div>
											</a>
										</div>
										<div class="info">
											<a data-bn-ipg="index-guess-video-p1" href="#" target="_blank">
												<div class="subtitle">
													<p>${strategyOfEach.s_name}</p>
												</div>
												<div class="bottom"><span class="fr">${strategyOfEach.s_name}</span><span class="f14">${strategyOfEach.s_name}</span></div>
											</a>
										</div>
									</div>
								</li>
								</c:forEach>
							</ul>
						</div>

					</div>
					<!--今日推荐div外套结束-->

				</div>
				<!--今日推荐部分结束-->

				<!--上部分最外层结束-->
			</div>
			<!--上部分结束-->

			<!--中部分开始-->
			<div class="mfw-container clearfix" id="_j_mfw_container">

				<!--左中和中上部分div（小吃爆款和侧边栏目）-->
				<div class="mfw-wrapper">
					<!--小吃爆款开始-->
					<div class="mfw-sales" id="_j_sales">
						<div class="hd">小吃爆款</div>
						<!--标题-->
						<!--第一行-->
						<div class="bd">
							<ul class="clearfix">
								<c:forEach var="foodOfEach" items="${requestScope.list3}">
								<li class="item">
									<a  target="_blank" href="javascript:0;" class="cd-popup-trigger0">
										<div class="image">
											<img src="${foodOfEach.f_image}" height="135" width="220">
										</div>
										<h3 style="overflow: hidden; height: 40px; margin-top: 5px;">${foodOfEach.f_name}</h3>
										<div class="price"><strong>[南充高坪区]</strong></div>
									</a>
								</li>
								</c:forEach>
							</ul>

						</div>
					</div>
					<!--小吃爆款结束-->

					<!--中下开始-->
					<!--写游记模块（旅游过的写下的，用户可以观看，也可以写下自己的旅游之旅）-->
					<div class="mfw-travelnotes" id="_j_tn">
						<div class="navbar clearfix">
							<ul class="tn-nav" id="_j_tn_nav">

								<li class="active _j_gs_tab tn-nav-hot">
									<a href="#" data-objid="0">热门游记</a>
									<span class="tn-menu _j_open_search"><i class="tn-menu-icon"></i>筛选</span></li>
								<li class="_j_gs_tab tn-nav-new">
									<a href="#" data-type="3">最新发表</a>
								</li>
							</ul>
                            <!--写游记（要登录之后才能写游记，没有登录不能写）-->
							<div class="tn-write">
								<a class="btn-add" href="#" rel="nofollow" onClick="mm()"><i></i>写游记</a>
							</div>

						</div>
						<div class="tn-dropdown-pop _j_gs_container" style="display:none;">
							<span class="underline"></span>
							<a class="close _j_close" href="javascript:void(0);">×</a>
							<div class="section clearfix">
								<div class="label">目的地</div>
								<div class="section-cont">
									<div class="mui-search">
										<input class="mui-search-inp _j_gs_input" type="text" placeholder="输入你想查看的目的地">

										<div class="m-search-suggest tn-search-suggest hide _j_sr_container">

										</div>
									</div>
									<div class="hot-place">
										<a class="_j_gs_item _j_gs_sn_11058_2" href="#" data-name="斯里兰卡">斯里兰卡</a>
										<a class="_j_gs_item _j_gs_sn_11030_2" href="#" data-name="济州岛">济州岛</a>
										<a class="_j_gs_item _j_gs_sn_10189_2" href="#" data-name="香港">香港</a>
										<a class="_j_gs_item _j_gs_sn_10065_2" href="#" data-name="北京">北京</a>
										<a class="_j_gs_item _j_gs_sn_12711_2" href="#" data-name="云南">云南</a>
										<a class="_j_gs_item _j_gs_sn_10083_2" href="#" data-name="泰国">泰国</a>
										<a class="_j_gs_item _j_gs_sn_10799_2" href="#" data-name="青海湖">青海湖</a>
										<a class="_j_gs_item _j_gs_sn_10183_2" href="#" data-name="日本">日本</a>

									</div>
								</div>
							</div>
							<div class="section clearfix">
								<div class="label">兴趣</div>
								<div class="section-cont">
									<ul class="interest-list clearfix">
										<li class="_j_gs_item _j_gs_sn_417_1" data-objid="417" data-type="1" data-name="吃遍天下">
											<a href="javascript:void(0);">
												<span class="img"><img width="110" src="#"></span>
												<h3>吃遍天下</h3>
												<p>无敌手</p>
											</a>
										</li>
										<li class="_j_gs_item _j_gs_sn_452_1" data-objid="452" data-type="1" data-name="带着对象">
											<a href="javascript:void(0);">
												<span class="img"><img width="110" src="#"></span>
												<h3>带着对象</h3>
												<p>去虐狗</p>
											</a>
										</li>
										<li class="_j_gs_item _j_gs_sn_427_1" data-objid="427" data-type="1" data-name="姑娘漂亮">
											<a href="javascript:void(0);">
												<span class="img"><img width="110" src="#"></span>
												<h3>姑娘漂亮</h3>
												<p>就是美</p>
											</a>
										</li>
										<li class="_j_gs_item _j_gs_sn_436_1" data-objid="436" data-type="1" data-name="带着孩子">
											<a href="javascript:void(0);">
												<span class="img"><img width="110" src="https://p2-q.mafengwo.net/s9/M00/52/74/wKgBs1d8fXSASKT6AAA5t6CGBs050.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90"></span>
												<h3>带着孩子</h3>
												<p>看世界</p>
											</a>
										</li>
										<li class="_j_gs_item _j_gs_sn_423_1" data-objid="423" data-type="1" data-name="登山徒步">
											<a href="javascript:void(0);">
												<span class="img"><img width="110" src="https://p3-q.mafengwo.net/s9/M00/4F/92/wKgBs1d8eTWAdEVhAACSUDmMgdg66.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90"></span>
												<h3>登山徒步</h3>
												<p>用脚走</p>
											</a>
										</li>
										<li class="_j_gs_item _j_gs_sn_435_1" data-objid="435" data-type="1" data-name="带着父母">
											<a href="javascript:void(0);">
												<span class="img"><img width="110" src="https://b2-q.mafengwo.net/s9/M00/50/9E/wKgBs1d8eqqAU6M-AACLbzgALD438.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90"></span>
												<h3>带着父母</h3>
												<p>去远方</p>
											</a>
										</li>
										<li class="_j_gs_item _j_gs_sn_451_1" data-objid="451" data-type="1" data-name="独自一人">
											<a href="javascript:void(0);">
												<span class="img"><img width="110" src="https://b2-q.mafengwo.net/s9/M00/75/2E/wKgBs1d8tf6Abj2cAACmlG9smLk15.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90"></span>
												<h3>独自一人</h3>
												<p>最自由</p>
											</a>
										</li>
										<li class="_j_gs_item _j_gs_sn_453_1" data-objid="453" data-type="1" data-name="短途周末">
											<a href="javascript:void(0);">
												<span class="img"><img width="110" src="https://n2-q.mafengwo.net/s9/M00/74/0C/wKgBs1d8tJqAOm22AAAlduuXCi410.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90"></span>
												<h3>短途周末</h3>
												<p>散散心</p>
											</a>
										</li>

									</ul>
								</div>
							</div>
						</div>

						<!--文本栏目开始-->
						<div id="pagelet-block-457a25190641091a52d1ade284c28de6" class="pagelet-block" data-api=":note:pagelet:recommendNoteApi" data-params="{&quot;type&quot;:&quot;0&quot;}" data-async="1" data-controller="/js/index/ControllerRecommend">

							<!--文本栏目开始-->
							<div id="_j_tn_content">
								<div class="tn-list">
									<c:forEach var="hotOfEach" items="${requestScope.list4}">
									<div class="tn-item clearfix">
										<div class="tn-image">
											<a target="_blank"  href="javascript:0;" class="cd-popup-trigger2">
												<img src="${hotOfEach.h_image}" width=>

											</a>
										</div>
										<div class="tn-wrapper">
											<dl>
												<dt>
                                                                <a href="javascript:0;" class="cd-popup-trigger2" target="_blank">${hotOfEach.h_name}</a>
                            </dt>
												<dd>
													<a href="javascript:0;" class="cd-popup-trigger2" target="_blank">
															${hotOfEach.h_introduce}
													</a>
												</dd>
											</dl>

											<div class="tn-extra">
												<span class="tn-ding">
                        <a class="btn-ding" href="#"rel="nofollow"></a>
                        <em id="topvote8058963">8267</em><!--点赞的人数-->
                    </span>
												<span class="tn-place"><i></i><a href="#"data-type="2">乐山</a>，by</span>
												<!--地点和名字-->
												<span class="tn-user">
                        <a href="#"rel="nofollow">
                            <img src="http://p1-q.mafengwo.net/s9/M00/74/B8/wKgBs1gJ8D6AAeuJAATM36oPiXg06.jpeg?imageMogr2%2Fthumbnail%2F%2116x16r%2Fgravity%2FCenter%2Fcrop%2F%2116x16%2Fquality%2F90">
                            登录编写的用户名
                        </a>
                    </span>
												<span class="tn-nums"><i></i>414065/968</span>
												<!--浏览的人数-->
											</div>
										</div>
									</div>
									</c:forEach>
								</div>
								<!--分页开始-->
								<div align="right" class="m-pagination" id="_j_tn_pagination" data-type="0" data-objid="0">
									<span class="count">共${size}条记录，当前正显示第${index}页</span>
									<a class="pg-next _j_pageitem" href="<%=basePath%>Reception/strategyManage/toManageStrategy?index=${index-1}" rel="nofollow">上一页 <<</a>
									<!--	<span class="pg-current">1</span> -->
									<c:forEach var="listOfEach" end="${requestScope.pagecount}" step="1" begin="1">
										<a class="pi _j_pageitem" href="<%=basePath%>Reception/strategyManage/toManageStrategy?index=${listOfEach}" rel="nofollow">${listOfEach}</a>
									</c:forEach>

									<a class="pg-next _j_pageitem" href="<%=basePath%>Reception/strategyManage/toManageStrategy?index=${index+1}" rel="nofollow">下一页 &gt;&gt;</a>
								</div>
								<!--分页结束-->
							</div>
						</div>
					</div>
					<!--中下结束-->

				</div>

                <!--侧边栏开始-->

                <div class="mfw-aside">

                    <div class="asidebox box-traveller">
                        <div class="asidebox-hd">
                            <h2 class="hd-title"><a href="Writer（作家专栏）/Writer.html">旅行家专栏</a></h2>
                            <a class="hd-right" href="Writer（作家专栏）/Writer.html">更多>>></a>
                        </div>
                        <div class="asidebox-bd" id="_j_traveller_slide">
                            <ul class="slide-ul" >
                                <li>
                                    <div class="image">
                                        <a data-japp="oplog" data-type="thc" data-key="http://www.mafengwo.cn/traveller/article.php?id=3093" href="Writer（作家专栏）/Writer_a.html" target="_blank">
                                            <img src="<%=basePath %>jsp/Reception/img/writer/ww03.jpg" height="140" width="260">
                                        </a>
                                    </div>
                                    <h3>
                                        <a data-japp="oplog" data-type="thc" data-key="http://www.mafengwo.cn/traveller/article.php?id=3093" href="Writer（作家专栏）/Writer_a.html" target="_blank">成都旅游秋色绝佳欣赏地</a>
                                    </h3>
                                    <p>"三圣花乡"坐落于素有"中国花木之乡"之称...</p>
                                </li>


                            </ul>

                        </div>
                    </div>
                    <!--旅游攻略推模块荐-->
                    <div class="asidebox box-gonglve">
                        <div class="asidebox-hd">
                            <h2 class="hd-title">旅游攻略推荐</h2>
                            <a class="hd-right" href="Strategy(攻略)/Strategy.html">更多</a>
                        </div>
                        <div class="asidebox-bd">
                            <dl class="clearfix">
                                <dt>
                                    <a href="#"target="_blank">
                                        <img src="<%=basePath %>jsp/Reception/img/Strategy/S01.jpg" alt="南京旅游攻略" height="150" width="120">
                                    </a>
                                </dt>
                                <dd>
                                    <h3>
                                        <a href="#"title="南京">成都</a>
                                    </h3>
                                    <p>超实用3天2晚成都旅游攻略，小姐姐带你玩转成都</p>
                                </dd>
                            </dl>

                        </div>
                    </div>

                    <div class="asidebox box-gowild">

                    </div>
                    <!--最新活动模块（成都最新的举办过的活动）-->
                    <div class="asidebox box-traveller box-activity">
                        <div class="asidebox-hd">
                            <h2 class="hd-title">最新活动</h2>
                            <a class="hd-right" href="Travels（节日）/Travels.html">查看全部&gt;</a>
                        </div>
                        <div class="asidebox-bd" id="_j_activity_slide">
                            <ul class="slide-ul" style="left: -260px;">
                                <li>
                                    <div class="image">
                                        <a class="_js_h5_url" data-h5_img="https://p4-q.mafengwo.net/s12/M00/42/CD/wKgED1uasUaAcHx_AAACspuDvrY009.png?imageMogr2%2Fthumbnail%2F%21150x150r%2Fquality%2F90">
                                            <img src="https://n2-q.mafengwo.net/s12/M00/80/4A/wKgED1ubKnKAfjjbAAEk3CUQ2P046.jpeg?imageView2%2F2%2Fw%2F260%2Fh%2F178%2Fq%2F90" height="178" width="260">
                                        </a>
                                    </div>

                                </li>
                                <li>
                                    <div class="image">
                                        <a href="Travels（节日）/Travels.html" target="_blank">
                                            <img src="<%=basePath %>jsp/Reception/img/Travels/2018126105201_72306.jpg" height="178" width="260">
                                        </a>
                                    </div>
                                    <h3>
                                        <a href="#"target="_blank">熊猫灯会</a>
                                    </h3>
                                    <p>作为2018成都国际熊猫灯会的分会场，西岭雪山在开启2018炫彩夜滑季的同时，精心为游客呈上一组组美轮美奂的灯盏，让游客们提前感受熊猫灯会的璀璨与梦幻</p>
                                </li>

                            </ul>


                        </div>
                        <div id="_js_activity_h5_url" class="activity_h5url" style="display: none;"><img src="" height="150" width="150">
                            <p>快用手机扫描参与活动吧～</p><i>╳</i></div>

                        <style>
                            /* 微信弹层 */

                            .wx-mfw-pop {
                                width: 420px;
                                height: 285px;
                                padding-top: 45px;
                                text-align: center;
                                font-size: 16px;
                                color: #666;
                                line-height: 1.8em;
                            }

                            .wx-mfw-pop img {
                                margin-top: 10px;
                            }
                        </style>

                    </div>
                    <div class="da-banner"></div>

                    <!--成都新闻模块（最新新闻）-->
                    <div class="asidebox box-news">
                        <div class="asidebox-hd">
                            <div class="hd-title">成都窝网
                                <h2><a href="Travels（节日）/Travels.html">旅行网站</a></h2>最新进展</div>
                        </div>
                        <ul class="asidebox-bd">
                            <li>
                                <a href="Travels（节日）/Travels.html" rel="nofollow">熊猫灯会  璀璨蓉城</a>
                            </li>
                            <li>
                                <a href="Travels（节日）/Travels.html" rel="nofollow">成都本土美食受欢迎</a>
                            </li>
                            <li>
                                <a href="Travels（节日）/Travels.html" rel="nofollow">桃源?万物生长</a>
                            </li>
                            <li>
                                <a href="Travels（节日）/Travels.html" rel="nofollow">好吃嘴的成都觅食指南</a>
                            </li>
                            <li>
                                <a href="Travels（节日）/Travels.html" rel="nofollow">"逛、吃，逛、吃，逛吃逛吃逛吃......"</a>
                            </li>
                            <li>
                                <a href="Travels（节日）/Travels.html" rel="nofollow">中外萌娃朗诵桃花赋</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--
                作者：495171477@qq.com
                时间：2018-09-21
                描述：侧边栏结束
            -->

            </div>
					<!--旅游攻略推模块荐-->
					<div class="asidebox box-gonglve">
						<div class="asidebox-hd">
							<h2 class="hd-title">旅游攻略推荐</h2>
							<a class="hd-right" href="/gonglve/">更多</a>
						</div>
						<div class="asidebox-bd">
							<dl class="clearfix">
								<dt>
                                <a href="#"target="_blank">
                                    <img src="https://b2-q.mafengwo.net/s12/M00/25/93/wKgED1uafGyAMp47ABGDORyoh3079.jpeg?imageMogr2%2Fthumbnail%2F%21130x184r%2Fgravity%2FCenter%2Fcrop%2F%21130x184%2Fquality%2F90" alt="南京旅游攻略" height="155" width="110">
                                </a>
                            </dt>
								<dd>
									<h3>
                                                                        <a href="#"title="南京">南京</a>
                                </h3>
									<p>详细的吃、住、行、景点、线路、实用信息</p>
								</dd>
							</dl>
							<ul>
								<li>
									<a href="#" rel="nofollow">朱雨淇</a> 点评了&nbsp; 上城区的
									<a href="#" target="_blank">佟小曼手工茶</a>
								</li>
								<li>
									<a href="#" rel="nofollow">林秀清</a> 点评了&nbsp; 渝中区的
									<a href="#" target="_blank">水煮青春老火</a>
								</li>
								<li>
									<a href="#" rel="nofollow">情场图安</a> 点评了&nbsp; 和顺的
									<a href="#" target="_blank">春暖花开观景</a>
								</li>
								<li>
									<a href="#" rel="nofollow">蚂蜂窝用</a> 点评了&nbsp; 滨海的
									<a href="#" target="_blank">天津福顺龙发</a>
								</li>
								<li>
									<a href="#" rel="nofollow">朱之文</a> 点评了&nbsp; 上城区的
									<a href="#" target="_blank">佟小曼手工茶</a>
								</li>
							</ul>
						</div>
					</div>

					<div class="asidebox box-gowild">

					</div>
					<!--最新活动模块（成都最新的举办过的活动）-->
					<div class="asidebox box-traveller box-activity">
						<div class="asidebox-hd">
							<h2 class="hd-title">最新活动</h2>
							<a class="hd-right" href="/indexactivity/index.php">查看全部&gt;</a>
						</div>
						<div class="asidebox-bd" id="_j_activity_slide">
							<ul class="slide-ul" style="left: -260px;">
								<li>
									<div class="image">
										<a class="_js_h5_url" data-h5_img="https://p4-q.mafengwo.net/s12/M00/42/CD/wKgED1uasUaAcHx_AAACspuDvrY009.png?imageMogr2%2Fthumbnail%2F%21150x150r%2Fquality%2F90">
											<img src="https://n2-q.mafengwo.net/s12/M00/80/4A/wKgED1ubKnKAfjjbAAEk3CUQ2P046.jpeg?imageView2%2F2%2Fw%2F260%2Fh%2F178%2Fq%2F90" height="178" width="260">
										</a>
									</div>
									<h3>
                <a class="_js_h5_url" data-h5_img="https://p4-q.mafengwo.net/s12/M00/42/CD/wKgED1uasUaAcHx_AAACspuDvrY009.png?imageMogr2%2Fthumbnail%2F%21150x150r%2Fquality%2F90">查看Fresh旅行"肌"密</a>
            </h3>
									<p>免费体验不限量Fresh红茶精华</p>
								</li>
								<li>
									<div class="image">
										<a href="#" target="_blank">
											<img src="https://p4-q.mafengwo.net/s12/M00/08/01/wKgED1ublCyAXCJXAAE2659rgKE94.jpeg?imageView2%2F2%2Fw%2F260%2Fh%2F178%2Fq%2F90" height="178" width="260">
										</a>
									</div>
									<h3>
                <a href="#"target="_blank">成都灯会节</a>
            </h3>
									<p>免费漫游流量礼包体验</p>
								</li>
								<li>
									<div class="image">
										<a class="_js_h5_url" data-h5_img="https://b1-q.mafengwo.net/s12/M00/A2/CF/wKgED1uXIF-AAaTAAAACtR_rPvk846.png?imageMogr2%2Fthumbnail%2F%21150x150r%2Fquality%2F90">
											<img src="https://p1-q.mafengwo.net/s12/M00/D7/9D/wKgED1uIsq-AcXyUAAE3UupN02E13.jpeg?imageView2%2F2%2Fw%2F260%2Fh%2F178%2Fq%2F90" height="178" width="260">
										</a>
									</div>
									<h3>
                <a class="_js_h5_url" data-h5_img="https://b1-q.mafengwo.net/s12/M00/A2/CF/wKgED1uXIF-AAaTAAAACtR_rPvk846.png?imageMogr2%2Fthumbnail%2F%21150x150r%2Fquality%2F90">定制里享旅行，赢免单大奖</a>
            </h3>
									<p>定制里享旅行，赢免单大奖</p>
								</li>
								<li>
									<div class="image">
										<a class="_js_h5_url" data-h5_img="https://b2-q.mafengwo.net/s12/M00/17/DB/wKgED1uQgJSAdSGEAAADBdcFhac012.png?imageMogr2%2Fthumbnail%2F%21150x150r%2Fquality%2F90">
											<img src="https://p1-q.mafengwo.net/s10/M00/75/A4/wKgBZ1uGABmAX81sAAGAVCmBMRQ95.jpeg?imageView2%2F2%2Fw%2F260%2Fh%2F178%2Fq%2F90" height="178" width="260">
										</a>
									</div>
									<h3>
                <a class="_js_h5_url" data-h5_img="https://b2-q.mafengwo.net/s12/M00/17/DB/wKgED1uQgJSAdSGEAAADBdcFhac012.png?imageMogr2%2Fthumbnail%2F%21150x150r%2Fquality%2F90">嗨玩开学季，带娃游园去</a>
            </h3>
									<p>光大信用卡终极优惠，放肆享用！</p>
								</li>
								<li>
									<div class="image">
										<a class="_js_h5_url" data-h5_img="https://b3-q.mafengwo.net/s12/M00/BC/2A/wKgED1uM216AdjFSAAACpQpinak166.png?imageMogr2%2Fthumbnail%2F%21150x150r%2Fquality%2F90">
											<img src="https://p4-q.mafengwo.net/s12/M00/87/F3/wKgED1uOgymAJGNUAAHVx52_Bsk23.jpeg?imageView2%2F2%2Fw%2F260%2Fh%2F178%2Fq%2F90" height="178" width="260">
										</a>
									</div>
									<h3>
                <a class="_js_h5_url" data-h5_img="https://b3-q.mafengwo.net/s12/M00/BC/2A/wKgED1uM216AdjFSAAACpQpinak166.png?imageMogr2%2Fthumbnail%2F%21150x150r%2Fquality%2F90">寻找中国1号公路</a>
            </h3>
									<p>看达人公路故事，抽Gopro大奖！</p>
								</li>
							</ul>
							<ol class="slide-ol">
								<li class="" data-id="0"></li>
								<li class="active" data-id="1"></li>
								<li class="" data-id="2"></li>
								<li class="" data-id="3"></li>
								<li class="" data-id="4"></li>
							</ol>

						</div>
						<div id="_js_activity_h5_url" class="activity_h5url" style="display: none;"><img src="" height="150" width="150">
							<p>快用手机扫描参与活动吧～</p><i>╳</i></div>

						<style>
							/* 微信弹层 */
							
							.wx-mfw-pop {
								width: 420px;
								height: 285px;
								padding-top: 45px;
								text-align: center;
								font-size: 16px;
								color: #666;
								line-height: 1.8em;
							}
							
							.wx-mfw-pop img {
								margin-top: 10px;
							}
						</style>

					</div>
					<div class="da-banner"></div>

					<!--成都新闻模块（最新新闻）-->
					<div class="asidebox box-news">
						<div class="asidebox-hd">
							<div class="hd-title">成都窝网
								<h2><a href="javascript:">旅行网站</a></h2>最新进展</div>
						</div>
						<ul class="asidebox-bd">
							<li>02月06日
								<a href="#" rel="nofollow">成都弘轩阁墙绘:让壁画成为成都旅游打卡新地标</a>
							</li>
							<li>11月08日
								<a href="#" rel="nofollow">成都弘轩阁墙绘:让壁画成为成都旅游打卡新地标</a>
							</li>
							<li>11月05日
								<a href="#" rel="nofollow">成都弘轩阁墙绘:让壁画成为成都旅游打卡新地标</a>
							</li>
							<li>05月12日
								<a href="#" rel="nofollow">成都弘轩阁墙绘:让壁画成为成都旅游打卡新地标</a>
							</li>
							<li>10月29日
								<a href="#" rel="nofollow">成都弘轩阁墙绘:让壁画成为成都旅游打卡新地标</a>
							</li>
							<li>09月29日
								<a href="#" rel="nofollow">成都弘轩阁墙绘:让壁画成为成都旅游打卡新地标</a>
							</li>
						</ul>
					</div>
				</div>
				<!--
            	作者：495171477@qq.com
            	时间：2018-09-21
            	描述：侧边栏结束
            -->

			</div>

			<!--登录注0册模块的最外层div-->
			<div id="logins" style="display: none;">
				<div class="q-login-modal">
					<div class="q-layout-table">
						<div class="q-layout-cell">
							<!--注册登陆合并模块开始-->
							<div class="q-login-container">
								<div class="q-login-content-wrapper">
									<!--登陆的关闭按钮-->
									<div class="q-login-close"><i class="frame-iconfont frame-icon-cross"></i></div>
								

									<div class="q-login-content">
										<!--登陆模块开始-->
										<div class="q-login-layout" id="signin" style="display: none;">
											<div class="q-login-form-tip"><span class="tip-error">
									</div>
									
										<!--登陆标题-->
                                        <div class="q-login-title"><span>请登陆</span></div>

											<div class="q-login-form pt50">
												<!--登陆用户名输入框-->
												<div class="q-login-form-control">
													<label class="hide">用户名</label><input type="text" title="用户名" maxlength="15" placeholder="用户名" class="input">

													<!--空格div（不加的话会跳上来）-->
													<div class="input-tip">
													</div>
												</div>
												<div class="q-login-form-control">
													<!--登陆密码的输入框-->
													<div class="q-login-form-control"><label class="hide">密码</label><input type="password" title="密码" placeholder="密码" class="input"></div>
													<div class="input-tip">
														<a href="//passport.qyer.com/account/forget" data-bn-ipg="web-login-page-getpassword" target="_top" class="remember-link fr">忘记密码</a>
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
										<div class="q-login-layout" id="signup">
											<!--注册标题-->
											<div class="q-login-title"><span>注册</span></div>
											<div class="q-login-form-tip">
											</div>

											<div class="q-login-form">
								<div class="q-login-form-control">
									<div class="input-group">
										<div class="qui-select q-country-code" style="width: 78px; z-index: 10;"><span class="qui-select-text" style="height: 40px; line-height: 40px;">86</span>
											<!--输入手机号-->
										</div><label class="hide">手机号</label><input type="text" title="手机号" placeholder="输入用于登录的手机号码" class="input input-phone"></div>
									<div class="input-tip"><span class="tip-error" style="display: none;"><i class="frame-iconfont frame-icon-tip"></i><span></span>
										
										</span>
									</div>
								</div>
                                <!--注册邮箱输入框-->
								<div class="q-login-form-control"><label class="hide">邮箱</label><input type="text" title="邮箱" maxlength="15" placeholder="请输入邮箱" class="input" pattern="\w+@\w+.[a-zA-Z]{2,3}(.[a-zA-Z]{2,3})?">
                               
									<div class="input-tip"><span class="tip-error" style="display: none;"><i class="frame-iconfont frame-icon-tip"></i><span></span></span>
									</div>
								</div>
                            
									<!--空格div（不加的话会跳上来）-->
									<div class="input-tip"></div>
						<!--注册的输入用户名-->
								<div class="q-login-form-control"><label class="hide">用户名</label><input type="text" title="用户名" maxlength="15" placeholder="起一个具有辨识度的用户名" class="input">
                                <!--空格div（不加的话会跳上来）-->
									<div class="input-tip"></div>
								</div>
                                <!--注册用户输入密码-->
											<div class="q-login-form-control"><label class="hide">密码</label><input type="password" title="密码" maxlength="16" placeholder="输入8-16位密码，需包含字母及数字" class="input">
												<!--空格div（不加的话会跳上来）-->
												<div class="input-tip"> </div>
											</div>
                                <!--注册的按钮-->
								<div class="q-login-form-control"><button class="btn"><span>注册</span></button></div>
							</div>
												<!--切换到注册的div-->
												<div class="q-login-bottom"><span class="fl">
      已有帐号？<a href="javascript:;" onClick="denlu()">登录</a></span></div>

											</div>
										</div>
										<!--注册模块结束-->
									</div>
								</div>
							</div>

						</div>
					</div>
				</div>
				<!--注册登陆合并模块结束-->
              
                
                

				<!--中部分结束-->
				<div style="width: 100%; height: 200px; background: #323232;color: #FFFFFF;">
					<h1 style="text-align: center;">软件三班</h1>
				</div>
				<!--最外层遮箱效果结束-->
				</div>
			</div>
			<!--最外层div结束-->
			
			<!--弹框-->
<div class="cd-popup">
    <div class="cd-popup-container">
    <br>
     <h2 style="text-align:center">地方名称</h2>
        <div class="cd-buttons">
                 <div class="content">
    <div class="m-title clearfix">
        <h1>
            龙抄手
                    </h1>
        <div class="count">
            <span class="num-view" style="display: none"><i></i>149610</span>
            <span class="num-useful" data-id="8885" data-mddid="10035"><a href="javascript:void(0);"><i></i>&nbsp;</a><span style="display: none" class="useful-num">42</span></span>
        </div>
    </div>
    <div class="author">
        <div class="m-img">
        <div class="img-con">
            <img src="http://b2-q.mafengwo.net/s5/M00/47/43/wKgB21BVUMHR1QW2AAgykUDUkrk93.jpeg?imageMogr2%2Fthumbnail%2F680x%2Fquality%2F90">
                            <p>by <a href="/u/906702.html" target="_blank" rel="nofollow">写意水晶</a></p>
                    </div>
    </div>
 </div>
        <div class="m-txt">
        <p>抄手即馄饨，龙抄手是成都的著名品牌，皮薄馅多。红油抄手是很出名的品种之一，10-15元10个。</p>
          
        </div>
 </div>
        </div>
        <img  class="cd-popup-close" src="img/关闭-3.png" height="32" width="32" >
    </div>
</div>	

<!--弹框2-->
<div class="cd-popup2">
    <div class="cd-popup-container2">
<section id="body">

<header class="notes-view-header" id="J-notes-view-header">
<div class="notes-cover-pic active" id="J-notes-cover-pic">
<img alt="清迈" id="notes-cover-img" data-src="//gss0.baidu.com/7LsWdDW5_xN3otqbppnN2DJv/lvpics/pic/item/503d269759ee3d6dd06a11a44f166d224f4ade35.jpg" width="1600" height="899" src="img/01.jpg" style="width: 1348px; height: 757.408px; margin-left: -674px; margin-top: -378.704px;">
</div>
<div class="bg-mask"></div>
<div class="main-center clearfix">
<div class="public-side-toolbar" id="J_public-side-toolbar">
<div class="side-toolbar-wrapper">
<div class="side-toolbar-bg clearfix">
<a href="javascript:void(0)" id="J-recommendWrap3" class="aside-btn side-recommend" title="推荐"><span class="common-recommend-btn"><span class="common-recommend-btn-l"><i class="globel-iconfont"></i></span><span class="common-recommend-btn-num"><em class="recommend-btn-count">49</em></span><span class="common-recommend-btn-r"></span><span class="common-recommend-btn-hover-tip" style="display:none;">推荐</span></span></a>
<a href="javascript:void(0)" id="J-favoriteWrap3" class="aside-btn side-favorite" title="收藏"><span class="common-favorite-btn"><span class="common-favorite-btn-l"><i class="notes-iconfont"></i></span><span class="common-favorite-btn-num"><em class="favorite-btn-count">51</em></span><span class="common-favorite-btn-r"></span><span class="common-favorite-btn-hover-tip" style="display: none;">收藏</span></span></a>
<a href="javascript:void(0)" class="aside-btn side-relay" title="评论" pb-id="lv4744321">
<i class="notes-iconfont"></i>
<span class="side-reply-btn reply nslog" data-nslog="{&quot;page&quot;:&quot;side&quot;,&quot;type&quot;:&quot;203&quot;,&quot;pos&quot;:&quot;notes-reply-side&quot;}" id="J_side-reply"><em class="aside-btn-count relay-btn-count">28</em><em class="aside-btn-title">评论</em></span>
</a>
<span class="aside-btn share-bar bdshare_t" pb-id="lv4756759" data="{&quot;text&quot;:&quot;刚看完一篇游记《我的清迈美食之旅(打卡拍照圣地-白庙黑庙蓝庙)》，真是心驰神往啊，我也要去旅游！童鞋们快来围观！&quot;,&quot;pic&quot;:&quot;&quot;,&quot;url&quot;:&quot;http://lvyou.baidu.com/notes/888107e73fe2902a17f349c4?basic=1&amp;isshare=1&amp;sharefr=pc&quot;,&quot;desc&quot;:&quot;&quot;,&quot;comment&quot;:&quot;&quot;}">

</span>
</span>
</div>
</div>
</div>

<div class="note-header-main">
<div class="notes-hd">
<h1><strong title="我的清迈美食之旅(打卡拍照圣地-白庙黑庙蓝庙)">我的清迈美食之旅(打卡拍照圣地-白庙黑庙蓝庙)</strong></h1>

</div>
<div class="user-info-container">
<p class="user-info clearfix">
<a class="avatar" href="/user/859fca6ef2f35e0d9fd809bf" target="_blank">
<img src="img/02.jpg" title="喵梓葱头" alt="喵梓葱头">
</a>
<a href="/user/859fca6ef2f35e0d9fd809bf" target="_blank" class="uname">喵梓葱头</a>
<a href="/user/achieve/859fca6ef2f35e0d9fd809bf/" class="ulevel user-level i-level-8" target="_blank"></a>
<span class="personal-title clearfix">
<a class="personal-title-icon personal-title-daren daren-notes" href="/user/achieve/859fca6ef2f35e0d9fd809bf" title="游记达人" target="_blank">游记达人</a>
</span><span class="post-item"><a class="avatar usercard" href="/user/859fca6ef2f35e0d9fd809bf" target="_blank"><img width="60" height="60" src="img/01.jpg" title="" alt="喵梓葱头"></a></span>
<span class="note-view-info">
<span>查看26916</span>｜<span>回复28</span>
</span>
</p>
</div>
</div>
</div>
</header><div id="clone_notes_header" class="clone_notes_header" style="height: 500px; display: none;"></div>
<div class="notes-view-wrapper ">
<section class="notes-view-body main-view-mod-box" id="building">
<div class="notes-main-content">
<article class="main-article" id="building-container">
<h2>概览</h2>
<ul class="basic-info-container clearfix">
<li><span class="start_time infos"><i class="globel-iconfont"></i>时间：2017年11月</span></li>
<li><span class="during_time infos"><i class="globel-iconfont"></i>出行天数：4天</span></li>
<li><span class="charge_info infos"><i class="notes-iconfont"></i>人均费用：3000-5000(元)</span></li>
<li>
<span class="plan_info infos">
<span class="plan_info_wrapper" title="从 深圳 到 清迈">
<i class="notes-iconfont"></i>
<em>从</em>
<span>深圳</span>
<em>到</em>
清迈
</span>
</span>
</li>
</ul>
<div class="catalog-wrapper">
<ul class="catalog-list" id="J-catalog-list">
 <a id="hide" onclick="mm()"><div class="more">
				 	<button type="button" class="btn">查看更多</button>
					
				</a>
</ul>

</div>
</article>
</div>
<img  class="cd-popup-close" src="img/关闭-3.png" height="32" width="32" >
  </div>

 </div>
</div>
	</body>
</html>