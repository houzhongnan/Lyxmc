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
		<link rel="stylesheet" href="<%=basePath %>jsp/Reception/css/Hotel/Hotel.css" />
		<script src="<%=basePath %>jsp/Reception/js/jquery-1.7.2.min.js"></script>
	
		<script type="text/javascript" src="<%=basePath %>jsp/Reception/js/jquery-1.12.4.js"></script>
		<link rel="stylesheet" type="text/css" href="<%=basePath %>jsp/Reception/css/head.css">
		

	</head>

	<body>
		<div class="cc" style="width: 100% !important;">
			<div class="head">

			</div>
			<div class="banner_box">

				<div class="banner" style="background:url(../img/Hotel01.jpg); width: 100%; height: 600px;">

					<div class="banner—nav container" style="background: rgba(0,0,0,0.7);width: 100%; height: 600px;">
						
                        
                        
                        
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
						<!--头部结束-->
                        			<div class="StoreMall_mian">
							<div class="StoreMall_listmax">
                             <!--图标1-->
								<div class="StoreMall_list">
									<span><img src="<%=basePath %>jsp/Reception/img/房子.png" alt=""></span>
									<em>酒店--优质酒店</em>
								</div>
                                 <!--图标2-->
								<div class="StoreMall_list">
									<span><img src="<%=basePath %>jsp/Reception/img/房子(1).png" alt=""></span>
									<em>民宿--格调民宿</em>
								</div>
                                 <!--图标2-->
								<div class="StoreMall_list">
									<span><img src="<%=basePath %>jsp/Reception/img/房子(2).png" alt=""></span>
									<em>宾馆--干净整洁</em>
								</div>
                                 <!--图标4-->
								<div class="StoreMall_list">
									<span><img src="<%=basePath %>jsp/Reception/img/房子-01.png" alt=""></span>
									<em>如家--连锁安全</em>
								</div>
							</div>
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
 <!--优质酒店模块-->
			<div class="team_list_met_21_1 met-index-product met-index-body met-index-newproduct 
    bgcolor 
    " m-id="37">
    
				<section class="lh-partner lh-section clearfix lhShow">
					<h3 class="lh-partner-h3 wow animated fadeInDown animated animation-slide-top appear-no-repeat" data-plugin="appear" data-animate="slide-top" data-repeat="false">
            <p style="font-size:20px;font-weight:300;">优质酒店</p>        </h3>
					<div class="lh-partner-banner swiper-container-horizontal">
						<div class="swiper-wrapper">
							<ul class="swiper-slide lh-partner-item lh-flex                             blocks-xs-2                        blocks-md-3 blocks-lg-4 blocks-xxl-4 swiper-slide-active" style="width: 1200px;">
                                <c:forEach var="hotelOfEach" items="${requestScope.list}">
								<li>
                                 <!--图片-->
									<a href="javascript:0;" class="cd-popup-trigger0" style="cursor: auto;">
										<img src="${hotelOfEach.h_image}" alt="8">
									</a>

								</li>
                                </c:forEach>
							</ul>
						</div>
					</div>
				</section>
               
			</div>
     <!--优质酒店模块结束-->
          <!--格调民宿模块开始-->
			<div class="team_list_met_21_1 met-index-product met-index-body met-index-newproduct 
    bgcolor 
    " m-id="37">
				<section class="lh-partner lh-section clearfix lhShow">
					<h3 class="lh-partner-h3 wow animated fadeInDown animated animation-slide-top appear-no-repeat" data-plugin="appear" data-animate="slide-top" data-repeat="false">
            <p style="font-size:20px;font-weight:300;">格调民宿</p>        </h3>
					<div class="lh-partner-banner swiper-container-horizontal">
						<div class="swiper-wrapper">
							<ul class="swiper-slide lh-partner-item lh-flex                             blocks-xs-2                        blocks-md-3 blocks-lg-4 blocks-xxl-4 swiper-slide-active" style="width: 1200px;">
                                <c:forEach var="hotelOfEach" items="${requestScope.list2}">
									<li>
                                 <!--图片-->
									<a href="javascript:0;" class="cd-popup-trigger0" title="8" style="cursor: auto;">
										<img src="${hotelOfEach.h_image}" alt="8">
									</a>
								</li>
                                </c:forEach>
							</ul>
						</div>
					</div>
				</section>
                 <!--格调民宿模块结束-->
				 <!--猜你喜欢模块开始-->
			<section class="lh-partner lh-section clearfix lhShow">
					<h3 class="lh-partner-h3 wow animated fadeInDown animated animation-slide-top appear-no-repeat" data-plugin="appear" data-animate="slide-top" data-repeat="false">
            <p style="font-size:20px;font-weight:300;">猜你喜欢</p>        </h3>
					<div class="lh-partner-banner swiper-container-horizontal">
						<div class="swiper-wrapper">
							<ul class="swiper-slide lh-partner-item lh-flex                             blocks-xs-2                        blocks-md-3 blocks-lg-4 blocks-xxl-4 swiper-slide-active" style="width: 1200px;">
                                <c:forEach var="hotelOfEach" items="${requestScope.list3}">
                                <li>
                                 <!--图片-->
									<a href="javascript:0;" class="cd-popup-trigger0" title="8" style="cursor: auto;">
										<img src="${hotelOfEach.h_image}" alt="8">
									</a>
								</li>
                                </c:forEach>
															</ul>
						</div>
					</div>
				</section>	
				 <!--猜你喜欢模块结束-->
			</div>

			<div style="width: 100%; height: 200px; background: #323232;color: #FFFFFF;">
				<h1 style="text-align: center;">软件三班</h1>
			</div>
		</div>
		<!--
			弹出框部分
		-->
		

<!--弹框-->
<div class="cd-popup">
    <div class="cd-popup-container">
    <!--弹框标题-->
        <h4  style="text-align: center; font-size:18px; padding:15px 0 0;">方聚宜家</h4>
        <div class="cd-buttons">
        	<div class="pro-box clearfix">
    <div class="pro-left">
        <div class="pro-img" data-imgurl="">
        <!--获取的图片-->
            <img src="../img/Hotel/酒店/h01.jpg" alt="">
            
        </div>
        <div class="pro-intro">
        <!--酒店名称-->
            <h3>方聚宜家
                
                <div class="comment">
                    <i></i><a>781条</a><span>点评</span>
                </div>
            </h3>
        </div>
    </div>
    <div class="pro-right">
        <h1 class="pro-title">
        
            方聚宜家
            
        </h1>
        
        
            
            <!--运营标签弹窗-->
            <div class="hesui none">
                <div class="bg"></div>
                <div class="dialog-gift"><img src="../img/Hotel/酒店/h01.jpg"></div>
            </div>    
        
       
        
            <div class="pro-sale clearfix">
            <!--酒店价格-->
                <div class="pro-price">价&nbsp;&nbsp;格<span><strong style=" font-size:35px;font-weight:bold;">¥199</strong>/晚</span>
                    
                </div>
               
            </div>
            <div class="pro-feat">
            <div class="pro-feat-inner">
                
                
                    <div class="blh-tips">
                        优惠活动
                        <div class="pro-feat-more">
                        <i></i>
                        <p>
                            </p><ul>                            
                                <li><span style="color:#f60; font-size:12px;">“积分抵扣”最高100积分抵扣200元/人，具体以您选择的房型与出游日期为准。</span></li>
                                <li>1，显示“积分抵扣”标识的产品，百旅•要客会员均可使用专属积分抵扣部分订单金额，该优惠与其他优惠不可同时享受，最终抵扣额度以订单成功创建为准；</li>
                                <li>2，积分抵扣以成人为单位，帐户所剩积分须高于订单所有人的抵扣积分总和，才可使用此优惠。当前显示额度，仅为推荐，具体抵扣额度以您选择的房型与出游日期为准。 </li>
                            </ul>
                        <p></p>
                        </div>
                    </div>
                
                        <a href="javascript:;">优惠活动
                            <div class="pro-feat-more">
                                <i></i>
                                <p>可分3、6、10、12期支付，旅游无压力！</p>
                            </div>
                        </a>
                
                
                <a href="javascript:;">优惠活动
                    <div class="pro-feat-more">
                        <i></i>
                        <p>住六免一</p>
                    </div>
                </a>
                
                
            </div>
        </div>
        
        <div class="pro-time">
            入住日期：&nbsp;&nbsp;
            
            <a class="pro-st-btn top-calObj-processed" attr_linedate="2018-11-11" href="javascript:;">
                
                    2018-11-11&nbsp;&nbsp;
                    周日
                
            </a>
         </div>
         <br />
         <!--酒店介绍-->
           <div class="text">
           	   <em >
           	  我们周边公共交通配置设施完善，紧靠成都动物园，距离成都火车北站约15分钟车程；距离成都大熊猫基地约20分钟车程；楼下就是成都地铁3号线昭觉寺南站，可以乘地铁前往市区春熙路、武侯祠、锦里、宽窄巷子、天府广场、人民公园等景点，也可前往成都特色的大熊猫繁育基地；同时楼下公交站有多条公交线路经过，出行方便。
           	   </em> 
           </div> 
        
</div>
        	
        	
        	
        	
        	
        	
        	
             
        </div>

        
        <!--猜你喜欢-->
           <div class="detail-unit unit-relate">
	<div class="detail-unit-tit">
		<h3><span>猜你喜欢</span></h3>
	</div>

	<div class="relate-pro">
		<div class="relate-pro-tabs">
			<span>
            	-------------------------
            </span>
		</div>
		<div class="relate-pro-conts">
			<div class="relate-pro-cont">
				<div class="relate-pro-unit">
					<ul>
						
						<li attr-img="<img src='//pic5.40017.cn/01/001/5b/12/rBLkBVoC11OAc2k0ABTa1QxpbE0224_420x272_00.jpg' alt='' />" attr-name="" attr-proportion="13-14" attr-personrange="2-4" attr-state="2|2" attr-floor="5, 8, 9, 10, 11, 12, 13, 14, 15" attr-price="3499" attr-intro="" attr-facility="-床及沙发床，优质床上用品
-提供壁柜床，以容纳第3位旅客

-可选择连通房" attr-server="" attr-stocknum="17" class="cabinintro relate-thisObj-processed">
							<div class="relate-pro-img" data-imgurl=""> <img src="../img/Hotel/酒店/h08.jpg" alt="">
							</div>
							<div class="relate-pro-tit">
								<p>7天连锁</p>
								<span>3种房型</span>
							</div>
							<p class="relate-pro-descri">有无窗，无阳台，入住2-4人</p>
							<div class="relate-pro-price">
								<span>
                                       <i>惠</i>
                                        <strong>¥120/晚</strong>
                                    </span>
								<a class="btn " href="/youlun/linebook/171278_2018-11-11.html?Key=252088185098118151054108124094213128094002027218032030104250025016207160" target="_blank" data-spm="92.4.1">预订</a>
							</div>
						</li>

							<li attr-img="<img src='//pic5.40017.cn/01/001/5b/12/rBLkBVoC11OAc2k0ABTa1QxpbE0224_420x272_00.jpg' alt='' />" attr-name="" attr-proportion="13-14" attr-personrange="2-4" attr-state="2|2" attr-floor="5, 8, 9, 10, 11, 12, 13, 14, 15" attr-price="3499" attr-intro="" attr-facility="-床及沙发床，优质床上用品
-提供壁柜床，以容纳第3位旅客

-可选择连通房" attr-server="" attr-stocknum="17" class="cabinintro relate-thisObj-processed">
<!--图片-->
							<div class="relate-pro-img" data-imgurl=""> <img src="../img/Hotel/H04.jpg" alt="">
							</div>
							<div class="relate-pro-tit">
								<p>成都大酒店</p>
								<span>多种房型</span>
							</div>
                            <!--酒店介绍-->
							<p class="relate-pro-descri">20-25m²，有窗，有阳台，入住2-4人</p>
							<div class="relate-pro-price">
                            <!--价格-->
								<span>
                                       <i>惠</i>
                                        <strong>¥499/起</strong>
                                    </span>
								<a class="btn " href="/youlun/linebook/171278_2018-11-11.html?Key=252088185098118151054108124094213128094002027218032030104250025016207160" target="_blank" data-spm="92.4.1">预订</a>
							</div>
						</li>	<li attr-img="<img src='//pic5.40017.cn/01/001/5b/12/rBLkBVoC11OAc2k0ABTa1QxpbE0224_420x272_00.jpg' alt='' />" attr-name="" attr-proportion="13-14" attr-personrange="2-4" attr-state="2|2" attr-floor="5, 8, 9, 10, 11, 12, 13, 14, 15" attr-price="3499" attr-intro="" attr-facility="-床及沙发床，优质床上用品
-提供壁柜床，以容纳第3位旅客

-可选择连通房" attr-server="" attr-stocknum="17" class="cabinintro relate-thisObj-processed">
							<div class="relate-pro-img" data-imgurl=""> <img src="//pic5.40017.cn/01/001/5b/12/rBLkBVoC11OAc2k0ABTa1QxpbE0224_420x272_00.jpg" alt="">
							</div>
							<div class="relate-pro-tit">
								<p title="">天天住宿</p>
								<span>6种房型</span>
							</div>
							<p class="relate-pro-descri">有窗，无阳台，入住2人</p>
							<div class="relate-pro-price">
								<span>
                                       <i>惠</i>
                                        <strong>¥210/起</strong>
                                    </span>
								<a class="btn " href="/youlun/linebook/171278_2018-11-11.html?Key=252088185098118151054108124094213128094002027218032030104250025016207160" target="_blank" data-spm="92.4.1">预订</a>
							</div>
						</li>	<li attr-img="<img src='//pic5.40017.cn/01/001/5b/12/rBLkBVoC11OAc2k0ABTa1QxpbE0224_420x272_00.jpg' alt='' />" attr-name="" attr-proportion="13-14" attr-personrange="2-4" attr-state="2|2" attr-floor="5, 8, 9, 10, 11, 12, 13, 14, 15" attr-price="3499" attr-intro="" attr-facility="-床及沙发床，优质床上用品
-提供壁柜床，以容纳第3位旅客

-可选择连通房" attr-server="" attr-stocknum="17" class="cabinintro relate-thisObj-processed">
							<div class="relate-pro-img" data-imgurl=""> <img src="../img/Hotel/H06.jpg" alt="">
							</div>
							<div class="relate-pro-tit">
								<p title="">谛听民宿
							</p>
								<span>多种房型</span>
							</div>
							<p class="relate-pro-descri">有窗，有 阳台，入住2-6人</p>
							<div class="relate-pro-price">
								<span>
                                       <i>惠</i>
                                        <strong>¥100/人起</strong>
                                    </span>
								<a class="btn " href="/youlun/linebook/171278_2018-11-11.html?Key=252088185098118151054108124094213128094002027218032030104250025016207160" target="_blank" data-spm="92.4.1">预订</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--咨询和常见问题入口-->

</div>
        </div>
        <img  class="cd-popup-close" src="../img/关闭-3.png" height="32" width="32" >
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