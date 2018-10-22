<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
	<!--
      	作者：offline
      	时间：2018-09-25
      	描述：目的地
      -->

	<head>
		<meta charset="UTF-8">
		<title></title>
	
	<link rel="stylesheet" href="<%=basePath %>jsp/Reception/css/destination/bookstore.css"/>
		<link rel="stylesheet" href="<%=basePath %>jsp/Reception/css/destination/destination.css"/>
		<link rel="stylesheet" type="text/css" href="<%=basePath %>jsp/Reception/css/head.css">
	</head>
			<style>
			a:link,
		a:visited {
			text-decoration: none;
			/*超链接无下划线*/
		</style>
	<body>
		
		<div class="place-focus" data-cs-p="头图">
			
			<div class="show-banner show-info-notes">
				<div class="cover" style="height: auto; background: url(<%=basePath %>jsp/Reception/img/15370909858460.jpg) no-repeat;height: 640px;">
					 <!--导航条部分开始-->
			<div class="q-home" height="70" frameborder="0" scrolling="no" hspace="0"  style="width: 100% !important; height:80px !important; ">
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
									<a href="../index.html" data-bn-ipg="head-logo">
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
									
								</ul>
								<!--Nav结束-->
							</div>
							<!--头部左边内容（Nav）结束-->
			<!--头部右边内容（搜索框、第三方登入）开始-->
							<div class="q-header-user-wrapper">
								<!--搜索框-->
								<div class="q-header-search">
									<form action="//search.qyer.com/index" method="get">
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
						
						
						<div style=" position: absolute; margin-left:50% !important; margin-top:1%;z-index: 100 !important;width: 650px; height: 525px;background-color:rgb(255,255,255,0.9);border-radius: 5% 0 5% 0;">

							<c:forEach var="destinationOfEach" items="${requestScope.list}">
	<div class="item">
		<div class="pic"><img src="${destinationOfEach.d_image}"></div>
		<a href="<%=basePath%>Reception/destinationManage/toManageDestination2?id=${destinationOfEach.id}"><div class="desc"><div class="detail"><span class="s2">【${destinationOfEach.d_name}】</s2><br><span class="s1">${destinationOfEach.d_address}</span></div></div></a>
	</div>
							</c:forEach>
	
    </div>	
						
						
					</header>

				</div>
				<!--无样式div结束-->

								
							</div>
						</div>
						<!--导航条内容结束-->
	
			</div>
					
				</div>
			</div>
			<div class="place-search-panel place-search-panel-sm" style="">
				<h2>时代依旧负重前行，而你我已凌波微步。</h2>
				<form name="mdd-search-form" action="/search/s.php" method="get">
					<div class="searchbar">
						<input autocomplete="off" class="search-input" type="text" name="q" placeholder="我想去...">
						<a class="search-button" href="#" data-cs-l="搜索" role="button"><i class="icon-search"></i></a>
					</div>
				</form>

				<div class="place-search-hot">
					<a href="destination_ss_a.html">青城山</a>
					<a href="destination_ss_b.html">锦里</a>
					<a href="destination_ss_c.html">武侯祠</a>
					<a href="destination_ss_d.html">杜甫草堂</a>
					<a href="destination_ss_e.html">黄龙溪</a>
				</div>
			</div>
			
		</div>

		<div class="Coop_adv">
			<div class="Coop_adv_con">
				<span class="Our_con_tit">猜你喜欢</span>
				<div class="Coop_main">
					<c:forEach var="destinationOfEach" items="${requestScope.list2}">
					<div class="Coop_list">
						<a href="<%=basePath%>Reception/destinationManage/toManageDestination2?id=${destinationOfEach.id}">
							<em><img src="${destinationOfEach.d_image}" alt=""></em>
						<span>【${destinationOfEach.d_name}】</span>
						<p>${destinationOfEach.d_address}</p>
						</a>
					</div>
					</c:forEach>

				</div>
			</div>
		</div>
	</body>
</html>