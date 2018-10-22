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
		<link rel="stylesheet" href="<%=basePath %>jsp/Reception/css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="<%=basePath %>jsp/Reception/css/meal/m-02.css">
		<script src="<%=basePath %>jsp/Reception/js/jquery-1.7.2.min.js"></script>
	</head>


	<body>
		
		<section id="taskList">
		<div class="h-theme" id="_j_features">
            <div class="h-title" style="margin-top: 50px;">主题餐厅</div>
            <div class="tab-theme">
                <div class="themeList clearfix _j_tab_trigger" id="nav">
                                            <a href="javascript:;" data-id="0" class="on1">创意系列</a>
                                            <a href="javascript:;" data-id="1" class="on2" >平黑系列</a>
                                            <a href="javascript:;" data-id="2" class="on3">异域风情</a>
                                            <a href="javascript:;" data-id="3" class="on4">暗黑系列</a>
                                            <a href="javascript:;" data-id="4" class="on5">网红系列</a>
                                            <a href="javascript:;" data-id="5" class="on6">高档系列</a>
                                    </div>
                                    
                                    <div class="checkbox">
                                    <!--创意餐厅-->
                <div class="_j_tab_content container" style="margin: 0 23% !important;" id="tab1">

                                            <ul class="clearfix" style="" data-id="0">
                                                <c:forEach var="mealOfEach" items="${requestScope.list2}">

                                                            <li>
                                    <div class="fc-item">
                                      <a href="javascript:0;" class="cd-popup-trigger0">
                                            <div class="pic">
                                              <img width="318" height="240" style="width:318px;height:240px;" src="${mealOfEach.m_image}" class="img-show">
                                      </div>
                                            <div class="bag-opa"></div>
                                            <span class="shadow"></span>
                                            <div class="info">
                                                <h2>${mealOfEach.m_name}</h2>
                                        
                                      </div>
                                        </a>
                                    </div>
                                </li>
</c:forEach>
                                                    </ul>
                                        
                                    </div>

                                    <!--平价餐厅-->
                <div class="_j_tab_content container" style="margin: 0 23% !important;" id="tab2">

                                            <ul class="clearfix" style="" data-id="0">
                                                <c:forEach var="mealOfEach" items="${requestScope.list3}">
                                                            <li>
                                    <div class="fc-item">
                                        <a href="javascript:0;" class="cd-popup-trigger0" target="_blank" data-type="area" data-name="奥兰多">
                                             <div class="pic">
                                                <img width="318" height="240" style="width:318px;height:240px;" src="${mealOfEach.m_image}" class="img-show">
                                            </div>
                                            <div class="bag-opa"></div>
                                            <span class="shadow"></span>
                                            <div class="info">
                                                <h2>${mealOfEach.m_name}</h2>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                                </c:forEach>
                                                    </ul>

                                          </div>

                                    <!--异域风情-->
                <div class="_j_tab_content container" style="margin: 0 23% !important;" id="tab3">
                                            <ul class="clearfix" style="" data-id="0">
                                                <c:forEach var="mealOfEach" items="${requestScope.list4}">
                                                            <li>
                                    <div class="fc-item">
                                        <a href="javascript:0;" class="cd-popup-trigger0" target="_blank" data-type="area" data-name="奥兰多">
                                            <div class="pic">
                                                <img width="318" height="240" style="width:318px;height:240px;" src="${mealOfEach.m_image}" class="img-show">
                                            </div>
                                            <div class="bag-opa"></div>
                                            <span class="shadow"></span>
                                            <div class="info">
                                                <h2>${mealOfEach.m_name}</h2>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                                </c:forEach>
                                                    </ul>
                </div>

                    <!--暗黑系列-->
                    <div class="_j_tab_content container" style="margin: 0 23% !important;" id="tab4">

                        <ul class="clearfix" style="" data-id="0">
                            <c:forEach var="mealOfEach" items="${requestScope.list7}">
                                <li>
                                    <div class="fc-item">
                                        <a href="javascript:0;" class="cd-popup-trigger0" target="_blank" data-type="area" data-name="奥兰多">
                                            <div class="pic">
                                                <img width="318" height="240" style="width:318px;height:240px;" src="${mealOfEach.m_image}" class="img-show">
                                            </div>
                                            <div class="bag-opa"></div>
                                            <span class="shadow"></span>
                                            <div class="info">
                                                <h2>${mealOfEach.m_name}</h2>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>

                    </div>
                                          

                 
                                    <!--网红餐厅-->
                <div class="_j_tab_content container" style="margin: 0 23% !important;" id="tab5">
                                            <ul class="clearfix" style="" data-id="0">
                                                <c:forEach var="mealOfEach" items="${requestScope.list5}">
                                                            <li>
                                    <div class="fc-item">
                                        <a href="javascript:0;" class="cd-popup-trigger0" target="_blank" data-type="area" data-name="奥兰多">
                                            <div class="pic">
                                                <img width="318" height="240" style="width:318px;height:240px;"src="${mealOfEach.m_image}" class="img-show">
                                            </div>
                                            <div class="bag-opa"></div>
                                            <span class="shadow"></span>
                                            <div class="info">
                                                <h2>${mealOfEach.m_name}</h2>
                                                
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                                </c:forEach>
                                                    </ul>
                 
                                    </div>

                                    <!--高逼格系列-->
                <div class="_j_tab_content container" style="margin: 0 23% !important;" id="tab6">
                                            <ul class="clearfix" style="" data-id="0">
                                                <c:forEach var="mealOfEach" items="${requestScope.list6}">
                                                            <li>
                                    <div class="fc-item">
                                        <a href="javascript:0;" class="cd-popup-trigger0"target="_blank" data-type="area" data-name="奥兰多">
                                            <div class="pic">
                                                <img width="318" height="240" style="width:318px;height:240px;" src="${mealOfEach.m_image}" class="img-show">
                                            </div>
                                            <div class="bag-opa"></div>
                                            <span class="shadow"></span>
                                            <div class="info">
                                                <h2>${mealOfEach.m_name}</h2>
                                                
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                                </c:forEach>
                                                    </ul>
                              
                       
                               
                                           
                             
                                    </div>
                                </div>    
            </div>
           
        </div>
                </section>
                <script src="<%=basePath %>jsp/Reception/js/jquery-1.12.4.js"></script>
<script src="<%=basePath %>jsp/Reception/js/task.js"></script>
		
		<!--弹框热门推荐的餐厅-->
<div class="cd-popup">
<div class="cd-popup-container"> 
  <div class="cd-buttons">
 
                                                                                          
    <div class="overview wrapper">
      <p class="top" data-poi-id="3534219" onClick="_gaq.push(['_trackEvent', '旅游攻略_美食', '美食店详情_全部餐厅', '北京_200_护国寺小吃店（护国寺总店）']);">
        <!-- <em>NO.1</em>&nbsp;&nbsp; -->
        北京共<em>5151</em>家餐厅</p>
      <p></p>
      <div class="pic fl" href="#1"> <img src="http://m.tuniucdn.com/fb2/t1/G5/M00/5D/4B/Cii-sls1zRqILxt0AA-UU4xdKIcAAJUxwFeDEwAD5Rr868_w800_h400_c1_t0.jpg" alt=""> </div>
      <div class="intro fl">
        <div class="top">
          <h1 class="name" data-poi-id="3534219">护国寺小吃店（护国寺总店）</h1>
          <div class="score">
            <div class="center not-support"> <i class="iconfont1"></i> <span class="count">360</span>人推荐 </div>
          </div>
        </div>
        <div class="middle1">
          
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
        <div class="item item2 biankuang" onClick="_gaq.push(['_trackEvent', '旅游攻略_美食', '美食店详情_店内美食推荐', '北京_200_豌豆黄']);"> <a class="pic" href="/cuisine/9579/" target="_blank"> <img data-src="http://m.tuniucdn.com/fb2/t1/G5/M00/08/11/Cii-s1sCKWaIL5-cAAWdc4nr_LYAAHHiwDN22YABZ2L476_w320_h180_c1_t0.jpg" src="http://m.tuniucdn.com/fb2/t1/G2/M00/0E/8D/Cii-TFeOFEuITfXWAAIL2Ka_360AAAUTAH_cJ0AAgvw51.jpeg" alt="">
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
    <img  class="cd-popup-close" src="../img/关闭-3.png" height="32" width="32" > </div>
</div>
	</body>
</html>
