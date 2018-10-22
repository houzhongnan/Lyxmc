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
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" href="<%=basePath %>jsp/Reception/css/traffic/traffic.css" />
		<link rel="stylesheet" href="<%=basePath %>jsp/Reception/css/traffic/new.css" />
		<script type="text/javascript" src="<%=basePath %>jsp/Reception/js/jquery-1.12.4.js"></script>
		<script src="<%=basePath %>jsp/Reception/js/jquery-1.7.2.min.js"></script>
        <link rel="stylesheet" href="<%=basePath %>jsp/Reception/css/bookstore.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath %>jsp/Reception/css/meal/meal.css">
        <link rel="stylesheet" type="text/css" href="<%=basePath %>jsp/Reception/css/head.css">

				
	</head>
	<body>
		<div class="wrap">
	<div class="head">

	</div>
    <!--大图-->
	<div class="banner_box">

		<div class="banner" style="background:url(<%=basePath %>jsp/Reception/img/Hotel01.jpg); width: 100%; height: 600px;">
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
										<img src="<%=basePath %>jsp/Reception/img/logo.png" width="90" height="60">
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
						<!--头部结束-->
                        			
					</header>

				</div>
				<!--无样式div结束-->

								
							</div>
						</div>
						<!--导航条内容结束-->

		</div>
	</div>
    <!--大图结束-->
 <!--推荐的行程-->
	<div class="bottom_box">

		<div class="container-fluid blue_bg">
			<div class="blue_title text-center">
				<span>推荐的行程</span>
			</div>
			<div class="container">
				<div class="row">
                <!--方块1-->
<c:forEach var="trafficOfEach" items="${requestScope.list}">
					<div class="col-md-4 col-xs-12">
						<div class="blue_img_3">
                        <!--图1-->
							<div class="blue_img_3_img">
								<a href="javascript:0;" class="cd-popup-trigger0"><img src="${trafficOfEach.t_image}" alt=""></a>

								<p>${trafficOfEach.t_name}</p>
							</div>
							<div class="blue_img_3_day">
								<span class="pull-left">${trafficOfEach.t_days}天</span>
								<span class="pull-right">RMB ${trafficOfEach.t_price}起</span>
							</div>
							<div class="blue_img_3_text">
                            <!--图片文字介绍-->
								<p> ${trafficOfEach.t_introduce}</p>
								<a href="javascript:0;" class="cd-popup-trigger0">查看详情</a>
							</div>
						</div>
					</div>
</c:forEach>

				</div>

<!--猜你喜欢-->
				<section class="lh-partner lh-section clearfix lhShow">
					<h3 class="lh-partner-h3 wow animated fadeInDown animated animation-slide-top appear-no-repeat" data-plugin="appear" data-animate="slide-top" data-repeat="false">
           <div class="blue_title text-center">
        <span>猜你喜欢</span>
    </div>        </h3>
					<div class="lh-partner-banner swiper-container-horizontal">
						<div class="swiper-wrapper">
							<ul class="swiper-slide lh-partner-item lh-flex                             blocks-xs-2                        blocks-md-3 blocks-lg-4 blocks-xxl-4 swiper-slide-active" style="width: 1200px;">
<c:forEach var="trafficOfEach" items="${requestScope.list2}">
								<li>
									<a href="javascript:0;" class="cd-popup-trigger0" border-radius:5px; title="8" style="cursor: auto;">
                                    <!--图片1-->
										<img src="${trafficOfEach.t_image}" alt="8">
									</a>
								</li>
</c:forEach>
							</ul>
						</div>
					</div>
				</section>
                <!--猜你喜欢结束-->
			</div>
			<div style="width: 100%; height: 200px; background: #323232;color: #FFFFFF;">
				<h1 style="text-align: center;">软件三班</h1>
			</div>

</div>
</div>
<!--推荐的行程结束-->

</div>
</div>
<!--弹框-->
<div class="cd-popup">
    <div class="cd-popup-container">
    <br><c:forEach var="trafficOfEach" items="${requestScope.list}">
       <h4 class="modal-title" style="text-align: center;">${trafficOfEach.t_name}</h4>
        <div class="cd-buttons">
           <div class="pro-box clearfix">
									<div class="pro-left">
										<div class="pro-img" data-imgurl="">

											<img src="../img/traffic/1.jpg" alt="">

										</div>
										<div class="pro-intro">
											<h3>大好河山
                
                <div class="comment">
                    <i></i><a>781条</a><span>点评</span>
                </div>
            </h3>
										</div>
									</div>
									<div class="pro-right">
										<h1 class="pro-title">都江堰景区+青城山·</h1>

										<!--运营标签弹窗-->
										<div class="hesui none">
											<div class="bg"></div>
											
										</div>

										<div class="pro-sale clearfix">
											<div class="pro-price">预&nbsp;计&nbsp;价&nbsp;格<span><strong>¥399
                    
                </div>

            </div>
            <div class="pro-feat">
         
								</div>
								<br />
								<div class="text">
									<em>
           	  经灌县古城、经离堆公园、张松银杏、卧铁、堰功道。后游览都江堰水利工程宝瓶口引水口、飞沙堰泄洪坝、鱼嘴分水堤
           	   </em>
								</div>

							</div>

						</div>
        </div>
        <img  class="cd-popup-close" src="<%=basePath %>jsp/Reception/img/关闭-3.png" height="32" width="32" >
	</c:forEach>
    </div>
</div>
<script type="text/javascript">
    /*弹框JS内容*/
    jQuery(document).ready(function($){
        //打开窗口
        $('.cd-popup-trigger0').on('click', function(event){
            event.preventDefault();
            $('.cd-popup').addClass('is-visible');
            //$(".dialog-addquxiao").hide()
        });
        //关闭窗口
        $('.cd-popup').on('click', function(event){
            if( $(event.target).is('.cd-popup-close') || $(event.target).is('.cd-popup') ) {
                event.preventDefault();
                $(this).removeClass('is-visible');
            }
        });
        //ESC关闭
        $(document).keyup(function(event){
            if(event.which=='27'){
                $('.cd-popup').removeClass('is-visible');
            }
        });
    });
</script>
	</body>
</html>
