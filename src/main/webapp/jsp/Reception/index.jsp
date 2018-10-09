<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>

	<head>
		<meta charset="utf-8" />
		<title></title>
	</head>
	<script type="text/javascript" src="<%=basePath%>jsp/Reception/js/jquery-1.12.4.js"></script>
	<link rel="stylesheet" href="<%=basePath%>jsp/Reception/css/bookstore.css" />
	<!--<link rel="stylesheet" href="css/bootstrap.css" />-->
	<!--<link rel="stylesheet" href="css/bootstrap.min.css" />-->
	<link rel="stylesheet" href="<%=basePath%>jsp/Reception/css/font-awesome.css" />
	<link rel="stylesheet" href="<%=basePath%>jsp/Reception/css/index.css" />
	<link rel="stylesheet" href="<%=basePath%>jsp/Reception/css/login.css" />
    <%--<link rel="stylesheet" type="text/css" href="<%=basePath%>jsp/Reception/css/banner.css">--%>
	<script src="<%=basePath%>jsp/Reception/js/jquery-1.12.4.js"></script>
	<script src="<%=basePath%>jsp/Reception/js/wySilder.min.js"></script>
	<body>
		<!--最外层div-->
		<div class="container">

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
										<img src="<%=basePath%>jsp/Reception/img/logo.png" width="90" height="50">
									</a>
								</div>
								<!--logodiv结束-->
								<!--Nav开始-->
								<ul class="q-header-nav">

									<li class="nav-list">
										<a href="#" class="nav-span"><span>目的地</span>

										</a>

									</li>

									<li class="nav-list">
										<a href="#" class="nav-span"><span>下馆子</span>

										</a>

									</li>

									<li class="nav-list nav-list-layer">
										<a href="#" class="nav-span"><span>找乐子</span>
										</a>

									</li>

									<li class="nav-list">
										<a href="#" class="nav-span"><span>钓凯子</span>
										</a>
									</li>

									<li class="nav-list">
										<a href="#" class="nav-span"><span>撩妹子</span>
										</a>
									</li>

									<li class="nav-list nav-lists">
										<iframe id="fancybox-frame" name="fancybox-frame1537327510878" height="70" frameborder="0" scrolling="no" hspace="0" src="<%=basePath%>jsp/Reception/weather.jsp"></iframe>
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
										<a href="#" class="login-link" onClick="up()">注册</a>
										<!--login-->
										<a href="<%=basePath%>jsp/Reception/login.jsp" class="login-link" onClick="mm()">登录</a>
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
         
<div class="js-silder">
   <div class="silder-scroll">
		<div class="silder-main">
			<div class="silder-main-img">
				<img src="<%=basePath%>jsp/Reception/img/1-1.jpg" alt="">
			</div>
			<div class="silder-main-img">
				<img src="<%=basePath%>jsp/Reception/img/2-1.jpg" alt="">
			</div>
			<div class="silder-main-img">
				<img src="<%=basePath%>jsp/Reception/img/3-1.jpg" alt="">
			</div>
		</div>
	</div>
	</div>

<script src="<%=basePath%>jsp/Reception/js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="<%=basePath%>jsp/Reception/js/wySilder.min.js" type="text/javascript"></script>
<script>
	$(function (){
		$(".js-silder").silder({
			auto: true,//自动播放，传入任何可以转化为true的值都会自动轮播
			speed: 20,//轮播图运动速度
			sideCtrl: true,//是否需要侧边控制按钮
			bottomCtrl: true,//是否需要底部控制按钮
			defaultView: 0,//默认显示的索引
			interval: 3000,//自动轮播的时间，以毫秒为单位，默认3000毫秒
			activeClass: "active",//小的控制按钮激活的样式，不包括作用两边，默认active
		});
	});
</script>
								
							</div>
						</div>
						<!--banner内容结束-->
					<!--banner搜索框开始-->
					<div class="q-search active-place">
						<!--banner搜索框外套开始-->
						<div class="q-search-wrapper">
							<!--banner搜索框 分类开始-->
							<div class="tab clearfix">
								<a href="#" class="tab-place"><span>目的地</span></a>
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
								<li>
									<div data-type="video" class="item">
										<div class="img">
											<a data-bn-ipg="index-guess-video-p1" href="#" target="_blank">
												<video poster="https://pic.qyer.com/video/20180917/5cfa/452d/2ed5/dc5c/3c6b/61ef/8448/e786" width="100%" height="100%" autoplay muted="muted" loop>
													<source src="https://media.qyer.com/video/20180917/4dc6/4fc8/8dc5/86a4/b0fa/1bfa/5bf0/6417" type="video/mp4">
												</video>
												<div class="tag"><span class="bt">景点</span></div>
											</a>
										</div>
										<div class="info">
											<a data-bn-ipg="index-guess-video-p1" href="#" target="_blank">
												<div class="subtitle">
													<p>景点标题</p>
												</div>
												<div class="bottom"><span class="fr">地点</span><span class="f14">Hi 走啦</span></div>
											</a>
										</div>
									</div>
								</li>
								<li>
									<div data-type="lm" class="item">
										<div class="img">
											<a data-bn-ipg="index-guess-lm-p2" href="#">
												<div class="tag"><span class="bt">小吃</span></div>
											</a>
										</div>
										<div class="info">
											<a data-bn-ipg="index-guess-lm-p2" href="#" target="_blank">
												<div class="subtitle">
													<p>陈麻婆豆腐</p>
												</div>
												<div class="bottom"><span class="fr">地点</span><span class="f14">Hi 走啦</span></div>
											</a>
										</div>
									</div>
								</li>
								<li>
									<div data-type="bbs" class="item">
										<div class="img">
											<a data-bn-ipg="index-guess-bbs-p3" href="#" src="<%=basePath%>jsp/Reception/img/275x185 (1).jpg">
												<div class="tag"><span class="bt">线路</span></div>
											</a>
										</div>
										<div class="info">
											<a data-bn-ipg="index-guess-video-p1" href="#" target="_blank">
												<div class="subtitle">
													<p>路的名称</p>
												</div>
												<div class="bottom"><span class="fr">地点</span><span class="f14">Hi 走啦</span></div>
											</a>
										</div>
									</div>
								</li>
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
								<li>
									<div data-type="lm" class="item">
										<div class="img">
											<a data-bn-ipg="index-guess-lm-p5" href="#">
												<div class="tag"><span class="bt">小吃</span></div>
											</a>
										</div>
										<div class="info">
											<a data-bn-ipg="index-guess-video-p1" href="#" target="_blank">
												<div class="subtitle">
													<p>小吃名字</p>
												</div>
												<div class="bottom"><span class="fr">地点</span><span class="f14">Hi 走啦</span></div>
											</a>
										</div>
									</div>
								</li>
								<li>
									<div data-type="bbs" class="item">
										<div class="img">
											<a data-bn-ipg="index-guess-bbs-p6" href="#">
												<div class="tag"><span class="bt">玩乐</span></div>
											</a>
										</div>
										<div class="info">
											<a data-bn-ipg="index-guess-video-p1" href="#" target="_blank">
												<div class="subtitle">
													<p>项目名称</p>
												</div>
												<div class="bottom"><span class="fr">地点</span><span class="f14">Hi 走啦</span></div>
											</a>
										</div>
									</div>
								</li>
								<li>
									<div data-type="bbs" class="item">
										<div class="img">
											<a data-bn-ipg="index-guess-bbs-p7" href="#">
												<div class="tag"><span class="bt">景点</span></div>
											</a>
										</div>
										<div class="info">
											<a data-bn-ipg="index-guess-video-p1" href="#" target="_blank">
												<div class="subtitle">
													<p>景点标题</p>
												</div>
												<div class="bottom"><span class="fr">地点</span><span class="f14">Hi 走啦</span></div>
											</a>
										</div>
									</div>
								</li>
								<li>
									<div data-type="bbs" class="item">
										<div class="img">
											<a data-bn-ipg="index-guess-bbs-p8" href="#">
												<div class="tag"><span class="bt">民宿</span></div>
											</a>
										</div>
										<div class="info">
											<a data-bn-ipg="index-guess-video-p1" href="#" target="_blank">
												<div class="subtitle">
													<p>民宿名字</p>
												</div>
												<div class="bottom"><span class="fr">地点</span><span class="f14">Hi 走啦</span></div>
											</a>
										</div>
									</div>
								</li>
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
								<li class="item">
									<a href="#" target="_blank">
										<div class="image">
											<img src="#" height="135" width="220">
										</div>
										<h3 style="overflow: hidden; height: 40px; margin-top: 5px;">川北凉粉</h3>
										<div class="price"><strong>[南充高坪区]</strong></div>
									</a>
								</li>
								<li class="item">
									<a href="#" target="_blank">
										<div class="image">
											<img src="#" height="135" width="220">
										</div>
										<h3 style="overflow: hidden; height: 40px; margin-top: 5px;">韩包子 </h3>
										<div class="price"><strong>[成都温江]</strong><em></em></div>
									</a>
								</li>
								<li class="item">
									<a href="#" target="_blank">
										<div class="image">
											<img src="#" height="135" width="220">
										</div>
										<h3 style="overflow: hidden; height: 40px; margin-top: 5px;">韩包子 </h3>
										<div class="price"><strong>[成都温江]</strong><em></em></div>
									</a>
								</li>
							</ul>

						</div>
						<!--第二行-->
						<div class="bd">
							<ul class="clearfix">
								<li class="item">
									<a href="#" target="_blank">
										<div class="image">
											<img src="#" height="135" width="220">
										</div>
										<h3 style="overflow: hidden; height: 40px; margin-top: 5px;">韩包子 </h3>
										<div class="price"><strong>[成都温江]</strong><em></em></div>
									</a>
								</li>
								<li class="item">
									<a href="#" target="_blank">
										<div class="image">
											<img src="#" height="135" width="220">
										</div>
										<h3 style="overflow: hidden; height: 40px; margin-top: 5px;">韩包子 </h3>
										<div class="price"><strong>[成都温江]</strong><em></em></div>
									</a>
								</li>
								<li class="item">
									<a href="#" target="_blank">
										<div class="image">
											<img src="#" height="135" width="220">
										</div>
										<h3 style="overflow: hidden; height: 40px; margin-top: 5px;">韩包子 </h3>
										<div class="price"><strong>[成都温江]</strong><em></em></div>
									</a>
								</li>
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
									<div class="tn-item clearfix">
										<div class="tn-image">
											<a href="#" target="_blank">
												<img class="" data-src="http://p1-q.mafengwo.net/s10/M00/FA/0E/wKgBZ1oKXw-AIhmkABHjFeYE6-Q28.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90" data-rt-src="http://p1-q.mafengwo.net/s10/M00/FA/0E/wKgBZ1oKXw-AIhmkABHjFeYE6-Q28.jpeg?imageMogr2%2Fthumbnail%2F%21440x300r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21440x300%2Fquality%2F90" src="http://p1-q.mafengwo.net/s10/M00/FA/0E/wKgBZ1oKXw-AIhmkABHjFeYE6-Q28.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90" style="display: inline;">

											</a>
										</div>
										<div class="tn-wrapper">
											<dl>
												<dt>
                                                                <a href="#"target="_blank">宽窄巷子</a>
                            </dt>
												<dd>
													<a href="#" target="_blank">
														宽窄巷子由宽巷子、窄巷子和井巷子组成，是成都现存较成规模的清朝古街道。 闲在宽巷子：宽巷子集中了整个街区最多最完整的老建筑，多数的旧时门脸都保存完好。在这里可以品碗茶，吃正宗川菜，体验老成都的风土人情...
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
									<div class="tn-item clearfix">
										<div class="tn-image">
											<a href="#" target="_blank">
												<img class="" data-src="http://p1-q.mafengwo.net/s11/M00/4D/53/wKgBEFtm7waAEtb2ABBYhxJlpLs28.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90" data-rt-src="http://p1-q.mafengwo.net/s11/M00/4D/53/wKgBEFtm7waAEtb2ABBYhxJlpLs28.jpeg?imageMogr2%2Fthumbnail%2F%21440x300r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21440x300%2Fquality%2F90" src="http://p1-q.mafengwo.net/s11/M00/4D/53/wKgBEFtm7waAEtb2ABBYhxJlpLs28.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90" style="display: inline;">

											</a>
										</div>
										<div class="tn-wrapper">
											<dl>
												<dt>
                                                                <a href="#"target="_blank">宽窄巷子</a>
                            </dt>
												<dd>
													<a href="#" target="_blank">
														宽窄巷子由宽巷子、窄巷子和井巷子组成，是成都现存较成规模的清朝古街道。 闲在宽巷子：宽巷子集中了整个街区最多最完整的老建筑，多数的旧时门脸都保存完好。在这里可以品碗茶，吃正宗川菜，体验老成都的风土人情...
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
									<div class="tn-item clearfix">
										<div class="tn-image">
											<a href="#" target="_blank">
												<img class="" data-src="http://n3-q.mafengwo.net/s12/M00/97/78/wKgED1uKdA-AevsGAAiGTal0j8A89.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90" data-rt-src="http://n3-q.mafengwo.net/s12/M00/97/78/wKgED1uKdA-AevsGAAiGTal0j8A89.jpeg?imageMogr2%2Fthumbnail%2F%21440x300r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21440x300%2Fquality%2F90" src="http://n3-q.mafengwo.net/s12/M00/97/78/wKgED1uKdA-AevsGAAiGTal0j8A89.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90" style="display: inline;">

											</a>
										</div>
										<div class="tn-wrapper">
											<dl>
												<dt>
                                                                <a href="#"target="_blank">宽窄巷子</a>
                            </dt>
												<dd>
													<a href="#" target="_blank">
														宽窄巷子由宽巷子、窄巷子和井巷子组成，是成都现存较成规模的清朝古街道。 闲在宽巷子：宽巷子集中了整个街区最多最完整的老建筑，多数的旧时门脸都保存完好。在这里可以品碗茶，吃正宗川菜，体验老成都的风土人情...
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
									<div class="tn-item clearfix">
										<div class="tn-image">
											<a href="#" target="_blank">
												<img class="" data-src="http://b3-q.mafengwo.net/s11/M00/5E/44/wKgBEFt4Jr2AHmT5AAoZPfM1n5c66.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90" data-rt-src="http://b3-q.mafengwo.net/s11/M00/5E/44/wKgBEFt4Jr2AHmT5AAoZPfM1n5c66.jpeg?imageMogr2%2Fthumbnail%2F%21440x300r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21440x300%2Fquality%2F90" src="http://b3-q.mafengwo.net/s11/M00/5E/44/wKgBEFt4Jr2AHmT5AAoZPfM1n5c66.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90" style="display: inline;">

											</a>
										</div>
										<div class="tn-wrapper">
											<dl>
												<dt>
                                                                <a href="#"target="_blank">宽窄巷子</a>
                            </dt>
												<dd>
													<a href="#" target="_blank">
														宽窄巷子由宽巷子、窄巷子和井巷子组成，是成都现存较成规模的清朝古街道。 闲在宽巷子：宽巷子集中了整个街区最多最完整的老建筑，多数的旧时门脸都保存完好。在这里可以品碗茶，吃正宗川菜，体验老成都的风土人情...
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
									<div class="tn-item clearfix">
										<div class="tn-image">
											<a href="#" target="_blank">
												<img class="" data-src="http://n3-q.mafengwo.net/s12/M00/57/44/wKgED1uXo3mAY5rXABR629NFgUM05.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90" data-rt-src="http://n3-q.mafengwo.net/s12/M00/57/44/wKgED1uXo3mAY5rXABR629NFgUM05.jpeg?imageMogr2%2Fthumbnail%2F%21440x300r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21440x300%2Fquality%2F90" src="http://n3-q.mafengwo.net/s12/M00/57/44/wKgED1uXo3mAY5rXABR629NFgUM05.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90" style="display: inline;">

											</a>
										</div>
										<div class="tn-wrapper">
											<dl>
												<dt>
                                                                <a href="#"target="_blank">宽窄巷子</a>
                            </dt>
												<dd>
													<a href="#" target="_blank">
														宽窄巷子由宽巷子、窄巷子和井巷子组成，是成都现存较成规模的清朝古街道。 闲在宽巷子：宽巷子集中了整个街区最多最完整的老建筑，多数的旧时门脸都保存完好。在这里可以品碗茶，吃正宗川菜，体验老成都的风土人情...
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

									<div class="tn-item clearfix">
										<div class="tn-image">
											<a href="#" target="_blank">
												<img class="" data-src="http://n1-q.mafengwo.net/s12/M00/64/3D/wKgED1uXsNKAfne0AA9fVPQFTf854.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90" data-rt-src="http://n1-q.mafengwo.net/s12/M00/64/3D/wKgED1uXsNKAfne0AA9fVPQFTf854.jpeg?imageMogr2%2Fthumbnail%2F%21440x300r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21440x300%2Fquality%2F90" src="http://n1-q.mafengwo.net/s12/M00/64/3D/wKgED1uXsNKAfne0AA9fVPQFTf854.jpeg?imageMogr2%2Fthumbnail%2F%21220x150r%2Fstrip%2Fgravity%2FCenter%2Fcrop%2F%21220x150%2Fquality%2F90" style="display: inline;">

											</a>
										</div>
										<div class="tn-wrapper">
											<dl>
												<dt>
                                                                <a href="#"target="_blank">宽窄巷子</a>
                            </dt>
												<dd>
													<a href="#" target="_blank">
														宽窄巷子由宽巷子、窄巷子和井巷子组成，是成都现存较成规模的清朝古街道。 闲在宽巷子：宽巷子集中了整个街区最多最完整的老建筑，多数的旧时门脸都保存完好。在这里可以品碗茶，吃正宗川菜，体验老成都的风土人情...
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

								</div>
								<!--分页开始-->
								<div align="right" class="m-pagination" id="_j_tn_pagination" data-type="0" data-objid="0">
									<span class="count">共207页 / 2482条</span>

									<span class="pg-current">1</span>
									<a class="pi _j_pageitem" href="#" rel="nofollow">2</a>
									<a class="pi _j_pageitem" href="#" rel="nofollow">3</a>
									<a class="pi _j_pageitem" href="#" rel="nofollow">4</a>
									<a class="pi _j_pageitem" href="#" rel="nofollow">5</a>
									<a class="pi _j_pageitem" href="#" rel="nofollow">6</a>
									<a class="pi _j_pageitem" href="#" rel="nofollow">7</a>
									<a class="pi _j_pageitem" href="#" rel="nofollow">8</a>
									<a class="pi _j_pageitem" href="#" rel="nofollow">9</a>
									<a class="pg-next _j_pageitem" href="#" rel="nofollow">下一页 &gt;&gt;</a>
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
							<h2 class="hd-title"><a href="/traveller/">旅行家专栏</a></h2>
							<a class="hd-right" href="/traveller/">专栏首页</a>
						</div>
						<div class="asidebox-bd" id="_j_traveller_slide">
							<ul class="slide-ul" style="left: -260px;">
								<li>
									<div class="image">
										<a data-japp="oplog" data-type="thc" data-key="http://www.mafengwo.cn/traveller/article.php?id=3093" href="#" target="_blank">
											<img src="https://n4-q.mafengwo.net/s12/M00/9B/FE/wKgED1ufgouAX0cJAADMVj7Ws8A10.jpeg" height="140" width="260">
										</a>
									</div>
									<h3>
                                <a data-japp="oplog" data-type="thc" data-key="http://www.mafengwo.cn/traveller/article.php?id=3093" href="#"target="_blank">在地球上最热的城市，人们是怎么生活的？（二）</a>
                            </h3>
									<p>作为一个穆斯林国家，阿尔及利亚的北部沿海地带还算开放，越往沙漠越保守。</p>
								</li>
								<li>
									<div class="image">
										<a data-japp="oplog" data-type="thc" data-key="http://www.mafengwo.cn/traveller/article.php?id=3097" href="#" target="_blank">
											<img src="https://b4-q.mafengwo.net/s12/M00/9C/51/wKgED1ufgtCAKgiQAADi25DSYmI15.jpeg" height="140" width="260">
										</a>
									</div>
									<h3>
                                <a data-japp="oplog" data-type="thc" data-key="http://www.mafengwo.cn/traveller/article.php?id=3097" href="#"target="_blank">伏龙芝，苏联的遗迹</a>
                            </h3>
									<p>伏龙芝，是比什凯克苏联时代的旧称。</p>
								</li>
								<li>
									<div class="image">
										<a data-japp="oplog" data-type="thc" data-key="http://www.mafengwo.cn/traveller/article.php?id=3089" href="#" target="_blank">
											<img src="https://b1-q.mafengwo.net/s12/M00/00/44/wKgED1ubiw2AeHarAAEtDXIRqXY75.jpeg" height="140" width="260">
										</a>
									</div>
									<h3>
                                <a data-japp="oplog" data-type="thc" data-key="http://www.mafengwo.cn/traveller/article.php?id=3089" href="#"target="_blank">来自河北博物院的醒悟</a>
                            </h3>
									<p>中山王消失得真干净。一同消失的，还有他的中山国，他的家族，他的汉朝。</p>
								</li>
								<li>
									<div class="image">
										<a data-japp="oplog" data-type="thc" data-key="http://www.mafengwo.cn/traveller/article.php?id=3065" href="#" target="_blank">
											<img src="https://p4-q.mafengwo.net/s12/M00/46/DE/wKgED1uYxPyAVW67AADqhCZkSE496.jpeg" height="140" width="260">
										</a>
									</div>
									<h3>
                                <a data-japp="oplog" data-type="thc" data-key="http://www.mafengwo.cn/traveller/article.php?id=3065" href="#"target="_blank">铁山寺的一位女护法</a>
                            </h3>
									<p>她是义工，新疆人，来这里一个多月了。我问她会在这里待下去吗？她说也许吧，看缘分了。</p>
								</li>
								<li>
									<div class="image">
										<a data-japp="oplog" data-type="thc" data-key="http://www.mafengwo.cn/traveller/article.php?id=3077" href="#" target="_blank">
											<img src="https://b1-q.mafengwo.net/s12/M00/01/87/wKgED1uZukGAFSEUAAFkBhlnNHI25.jpeg" height="140" width="260">
										</a>
									</div>
									<h3>
                                <a data-japp="oplog" data-type="thc" data-key="http://www.mafengwo.cn/traveller/article.php?id=3077" href="#"target="_blank">“如果生活不如意，还可以回到伍德斯托克”</a>
                            </h3>
									<p>纽约市之外的纽约上州和下州，有着与大都市完全不同的旅行体验。不会堵车，没有汹涌人潮，除了1969年的某一天。</p>
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

							<!--<script type="text/javascript">
							M.closure(function(require) {
								var ClickToggle = require('ClickToggle');
								var h5Url = $('#_js_activity_h5_url');
								if($('#_j_activity_slide ._js_h5_url').length) {
									new ClickToggle({
										'container': '#_j_activity_slide',
										'innerSelector': '._js_h5_url',
										'handler': function(target) {
											h5Url.children('img').attr('src', target.data('h5_img')).end().show();
										},
										'outHandler': function() {
											h5Url.hide();
										}
									});
								}

								h5Url.on('click', 'i', function() {
									h5Url.hide();
								});
							});
						</script>-->

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
									<script>
										$(document).ready(function() {
											$('.q-login-close').click(function() {
												$('#logins').hide();
											});

										});
									</script>

								<div class="q-login-content">
									<!--登陆模块开始-->
									<div class="q-login-layout" id="signin" style="display: none;">
										<div class="q-login-form-tip"><span class="tip-error">
										</div>

										<!--登陆标题-->
                                        <div class="q-login-title"><span>登陆</span></div>

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
												<!--注册用户名输入框-->
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
			</div>
			<!--最外层div结束-->
	</body>
	<!--登陆注册的隐藏显示效果-->
	<script>
		function zhuce() {
			$("#signin").hide();
			$("#signup").show();
		}

		function denlu() {
			$("#signup").hide();
			$("#signin").show();
		}

		function up() {
			$("#login").hide();
			$("#logins").show();
			$("#login").show();

		}

		function mm() {
			$("#signup").hide();
			$("#logins").show();
			$("#login").show();
			$("#signin").show();

		}
	</script>

</html>