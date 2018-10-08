<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
	<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>成都天气预报代码调用</title>
    <link href="<%=basePath%>jsp/Reception/css/天气预报.css" rel="stylesheet" type="text/css">
    <!--[if IE 6]>
    <script type="text/javascript" mce_src="DD_belatedPNG.js" src="//img.tianqijun.com/static/js/DD_belatedPNG.js"></script>
    <script type="text/javascript">DD_belatedPNG.fix(".pngtqico");</script>
    <![endif]-->
    <script type="text/javascript" src="//lib.sinaapp.com/js/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript">
        var color = bgcolor = bdcolor = site = icon = "";
        var num = 0;
        $(document).ready(function(){
            init();

            if (typeof(bgcolor) != 'undefined' && bgcolor != '') {
                $("#mobile01").css('background-color', bgcolor);
            }
            if (typeof(bdcolor) != 'undefined' && bdcolor != '') {
                $("#mobile01").css('border', '1px solid ' + bdcolor);
            }
            if (typeof(color) != 'undefined' && color != '') {
                $("#mobile01").css('color', color);
                $("#mobile01 a").css('color', color);
            }
        });

        function init(){
            if(num==0) num=6;
            for (var i=6; i > num; i--) {
                $("#mright_"+i).remove();
            }
            if (typeof(icon) != 'undefined' && icon != '') {
                $("img.pngtqico").each(function(i){
                    this.src = this.src.replace("images/tianqi", "images/" + icon);
                });
            }
        }

        function getElementsByClassName(className, element) {
            var children = (element || document).getElementsByTagName('*');
            var elements = new Array();

            for (var i = 0; i < children.length; i++) {
                var child = children[i];
                var classNames = child.className.split(' ');
                for (var j = 0; j < classNames.length; j++) {
                    if (classNames[j] == className) {
                        elements.push(child);
                        break;
                    }
                }
            }

            return elements;
        }
        function oldclose(){
            $('#close').hide();
        }

    </script>
<style type="text/css">
    #mobile01{width:auto;height: 70px;text-align:center;overflow:hidden;}
    #mobile01 .wtname{width:90px;float:left; height:20px; overflow:hidden; padding-top: 2px;}
</style></head>


<body marginwidth="0" marginheight="0" style="background-color:transparent;">
<div id="mobile01" style=" padding-top:10px;">
    <div class="mleft">
        <div class="wtname"><a target="_blank" href="#" ><span style="font: 16px;">成都</span></a></div>
        <div class="order">火锅之城</div>
    </div>
        <div id="mright_1" class="mright">
        <a class="box_a" target="_blank" href="http://chengdu.tianqi.com/?tq" title="阴" nowrap="true">
            <div name="wt" class="wt" id="day_1">
                <div class="img"><img class="pngtqico" align="absmiddle" src="http://img.tianqi.com/static/images/tianqibig/b2.png" style="border:0;width:46px;height:46px"></div>
                <div class="taday02">
                    <ul>
                        <li><span class="day">今天</span><span>19℃～26℃</span></li>
                    </ul>
                </div>
            </div></a>
        <div class="zl"><a title="今日pm2.5指数为33，空气质量优" target="_blank" href="//www.tianqi.com/air/">空气质量：<span class="f1" style="background:#79b800">优</span></a></div>
    </div>
    
    <div id="mright_2" class="mright">
        <a class="box_a" target="_blank" href="http://chengdu.tianqi.com/?tq" title="阴" nowrap="true">
            <div name="wt" class="wt" id="day_1">
                <div class="img"><img class="pngtqico" align="absmiddle" src="http://img.tianqi.com/static/images/tianqibig/b2.png" style="border:0;width:46px;height:46px"></div>
                <div class="taday01">
                    <ul>
                        <li><span class="day">明天</span><span class="wtpath">阴</span></li>
                        <li>18℃～27℃</li>
                    </ul>
                </div>
            </div></a>
    </div>

    <div id="mright_3" class="mright">
        <a class="box_a" target="_blank" href="http://chengdu.tianqi.com/?tq" title="多云" nowrap="true">
            <div name="wt" class="wt" id="day_1">
                <div class="img"><img class="pngtqico" align="absmiddle" src="http://img.tianqi.com/static/images/tianqibig/b1.png" style="border:0;width:46px;height:46px"></div>
                <div class="taday01">
                    <ul>
                        <li><span class="day">后天</span><span class="wtpath">多云</span></li>
                        <li>17℃～27℃</li>
                    </ul>
                </div>
            </div></a>
    </div>


    <div id="mright_4" class="mright">
        <a class="box_a" target="_blank" href="http://chengdu.tianqi.com/?tq" title="多云" nowrap="true">
            <div name="wt" class="wt" id="day_1">
                <div class="img"><img class="pngtqico" align="absmiddle" src="http://img.tianqi.com/static/images/tianqibig/b1.png" style="border:0;width:46px;height:46px"></div>
                <div class="taday01">
                    <ul>
                        <li><span class="day">22日</span><span class="wtpath">多云</span></li>
                        <li>17℃～24℃</li>
                    </ul>
                </div>
            </div></a>
    </div>

    <div id="mright_5" class="mright">
        <a class="box_a" target="_blank" href="http://chengdu.tianqi.com/?tq" title="多云" nowrap="true">
            <div name="wt" class="wt" id="day_1">
                <div class="img"><img class="pngtqico" align="absmiddle" src="http://img.tianqi.com/static/images/tianqibig/b1.png" style="border:0;width:46px;height:46px"></div>
                <div class="taday01">
                    <ul>
                        <li><span class="day">23日</span><span class="wtpath">多云</span></li>
                        <li>18℃～25℃</li>
                    </ul>
                </div>
            </div></a>
    </div>

    <div class="mright_01"><a class="more" target="_blank" href="http://chengdu.tianqi.com/?tq">七日<br>天气</a></div>
</div>
<div style="display:none"><script type="text/javascript">
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F86f43783acc56b0c8abb5bb039edc763' type='text/javascript'%3E%3C/script%3E"));
    </script><script src=" http://hm.baidu.com/h.js?86f43783acc56b0c8abb5bb039edc763" type="text/javascript"></script><a href="http://tongji.baidu.com/hm-web/welcome/ico?s=86f43783acc56b0c8abb5bb039edc763" target="_blank"><img border="0" src="https://hmcdn.baidu.com/static/hmt/icon/21.gif" width="20" height="20"></a></div>
<script type="text/javascript">num=1;wind=0;temp=0;</script><script type="text/javascript">num=0;temp=0;</script></body></html>