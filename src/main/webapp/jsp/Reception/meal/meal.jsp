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
		<link rel="stylesheet" href="<%=basePath %>jsp/Reception/css/bookstore.css" />
		<link rel="stylesheet" type="text/css" href="<%=basePath %>jsp/Reception/css/meal/meal.css">
		<script src="<%=basePath %>jsp/Reception/js/jquery-1.7.2.min.js"></script>
		<script src="<%=basePath %>jsp/Reception/js/jquery-1.12.4.js"></script>
		<script src="<%=basePath %>jsp/Reception/js/task.js"></script>
        <link rel="stylesheet" type="text/css" href="<%=basePath %>jsp/Reception/css/head.css">
	</head>

<body>
		<div class="container">		
		<div class="head">

		</div>
        <!--头部 -->
		<div class="banner_box">
			
			<div class="banner" style="background:url(../img/m01.jpg) 60% 30% no-repeat; width: 100%; height: 450px;">
			
				<div class="banner—nav container" style="background: rgba(0,0,0,0.7);width: 100%; height: 450px;">
                        
                        			<!--上部分开始-->
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
									<a href="<%=basePath %>jsp/Reception/index.html" data-bn-ipg="head-logo">
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
                        			   		<!--头部（四个图标）-->
				   		<div class="StoreMall_mian" style=" margin-bottom:">
            <div class="StoreMall_listmax">
            <!--图标1-->
                <div class="StoreMall_list" >
                    <span><img  src="<%=basePath%>jsp/Reception/img/m-01.png" alt=""></span>
                    <em>火锅--成都之魂</em>
                </div>
                <!--图标2-->
                <div class="StoreMall_list">
                    <span><img src="<%=basePath%>jsp/Reception/img/m-02.png" alt=""></span>
                    <em>小吃--成都之魂</em>
                </div>
                <!--图标三-->
                <div class="StoreMall_list">
                    <span><img src="<%=basePath%>jsp/Reception/img/m-03.png" alt=""></span>
                    <em>小吃--成都之魂</em>
                </div>
                <!--图标4-->
                <div class="StoreMall_list">
                    <span><img src="<%=basePath%>jsp/Reception/img/m-02.png" alt=""></span>
                    <em>小吃--成都之魂</em>
                </div>
            </div>
        </div> 
					</header>

				</div>
				<!--无样式div结束-->

								
							</div>
						</div>
						<!--banner内容结束-->

                        
				   		
	
				   		
				</div>
			</div>						
		</div>
		<!--热门推荐-->
		<div class="main-box container ">
			<div class="main">
				<div class="m-01">
					<div class="title">
						<h1>热门推荐</h1>
						<span>华丽而精致的西子湖餐厅，以不夜城的姿态，散发著许多耀眼的光芒，等您来搜罗。</span><br />
					</div>
                    <!--方块一（蜀九火锅）-->
<c:forEach var="mealOfEach" items="${requestScope.list}">
					<div class="m-llist1 " id="div1">

						<a href="javascript:0;" class="cd-popup-trigger0"><img  src="${mealOfEach.m_image}" style="text-align: center;" ></a> <br />
						<div class="m-01_text"><span>${mealOfEach.m_name}</span>

						</div>
					</div>
</c:forEach>
				</div>
			</div>
		</div>
        <div class="m-02">		
				   		<iframe height="70" frameborder="0" scrolling="no" hspace="0" src="<%=basePath%>Reception/mealManage/toManageMeal2" style="width: 100% !important; height:900px !important; "></iframe>
				</div>
		<div style="width: 100%; height: 200px; background: #323232;color: #FFFFFF;">
			<span style="text-align: center !important; margin: 0 auto !important;font-size: 3.0em;">
				成都
			</span>
			
		</div>
		</div>
		
		
		
		
		<!--弹框主题餐厅-->
<div class="cd-popup">
<div class="cd-popup-container">
  <div class="cd-buttons">
    <div class="overview wrapper">
      <p class="top" data-poi-id="3534219" >
        <!--餐厅名字-->
        餐厅</p>
      <p></p>
      <!--弹框（大图）-->
      <div class="pic fl" href="#1"> <img src="http://m.tuniucdn.com/fb2/t1/G5/M00/5D/4B/Cii-sls1zRqILxt0AA-UU4xdKIcAAJUxwFeDEwAD5Rr868_w800_h400_c1_t0.jpg" alt=""> </div>
      <div class="intro fl">
        <div class="top">
         <!--餐厅名字-->
          <h1 class="name" data-poi-id="3534219">护国寺小吃店（护国寺总店）</h1>
          <div class="score">
            <div class="center not-support"> <i class="iconfont1"></i> <span class="count">360</span>人推荐 </div>
          </div>
        </div>
        <div class="middle1">
          <!--餐厅介绍-->
          <p class="omit"><span class="colon"></span>从朋友嘴里知道护国寺小吃店，说这里的小吃非常好吃，所以去北京特意去体验了一下，感觉还是非常不错的，都是非常传统的北京风味，尤其是驴打滚和豌豆黄好吃。</p>
        </div>
      </div>
      <i class="backshadow"></i> </div>
    <div class="srecommend wrapper" id="srecommend">
      <h2>店内美食推荐</h2>
      <div class="module clearfix">
        <div class="item item1 biankuang" onClick="_gaq.push(['_trackEvent', '旅游攻略_美食', '美食店详情_店内美食推荐', '北京_200_驴打滚']);"> <a class="pic" href="/cuisine/4231/" target="_blank"> <img data-src="http://m.tuniucdn.com/fb2/t1/G5/M00/4A/19/Cii-slsrWUaIGt0oAAds24tWh0wAAI6LwOyUJkAB2zz732_w320_h180_c1_t0.jpg" src="http://m.tuniucdn.com/fb2/t1/G2/M00/0E/8D/Cii-TFeOFEuITfXWAAIL2Ka_360AAAUTAH_cJ0AAgvw51.jpeg" alt="">
            <p class="title">驴打滚</p>
            </a>
          <div class="reviews">
            <div class="top"> <span class="star star-3"></span>
              <div class="discuss"><i class="iconfont1"></i> <span class="count">278</span></div>
            </div>
            <p class="middle1"><span class="colon"></span> 豆面糕又称驴打滚，由一层层的粘面加上红糖和炒熟的黄豆面卷成的，是北京古老小吃之一。光听这名儿就生三分兴趣，入口又粘又甜，带有...</p>
          </div>
        </div>
        <div class="item item2 biankuang"> <a class="pic" href="/cuisine/9579/" target="_blank"> <img data-src="http://m.tuniucdn.com/fb2/t1/G5/M00/08/11/Cii-s1sCKWaIL5-cAAWdc4nr_LYAAHHiwDN22YABZ2L476_w320_h180_c1_t0.jpg" src="http://m.tuniucdn.com/fb2/t1/G2/M00/0E/8D/Cii-TFeOFEuITfXWAAIL2Ka_360AAAUTAH_cJ0AAgvw51.jpeg" alt="">
            <p class="title">豌豆黄</p>
            </a>
          <div class="reviews">
            <div class="top"> <span class="star star-4"></span>
              <div class="discuss"><i class="iconfont1"></i> <span class="count">174</span></div>
            </div>
            <p class="middle1"><span class="colon"></span> 小巧精致的豌豆黄是北京传统的小吃。用清甜、细腻、爽口、百吃不厌大概能概括其美味。豌豆黄有着利小便，止渴的功效，也是最应景的夏...</p>
          </div>
        </div>
      </div>
    </div>
    <img  class="cd-popup-close" src="<%=basePath%>jsp/Reception/img/关闭-3.png" height="32" width="32" > </div>
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
