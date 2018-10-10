<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>左侧导航menu</title>
<link href="css/css.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/sdmenu.js"></script>
  <script language="JavaScript" src="<%=basePath%>jsp/backstage/js/jquery.js"></script>
<script type="text/javascript">
	// <![CDATA[
	var myMenu;
	window.onload = function() {
		myMenu = new SDMenu("my_menu");
		myMenu.init();
	};
	// ]]>
</script>
<style type=text/css>
html{ SCROLLBAR-FACE-COLOR: #538ec6; SCROLLBAR-HIGHLIGHT-COLOR: #dce5f0; SCROLLBAR-SHADOW-COLOR: #2c6daa; SCROLLBAR-3DLIGHT-COLOR: #dce5f0; SCROLLBAR-ARROW-COLOR: #2c6daa;  SCROLLBAR-TRACK-COLOR: #dce5f0;  SCROLLBAR-DARKSHADOW-COLOR: #dce5f0; overflow-x:hidden;}
body{overflow-x:hidden; background:url(images/main/leftbg.jpg) left top repeat-y #f2f0f5; width:194px;}
</style>
</head>
<body onselectstart="return false;" ondragstart="return false;" oncontextmenu="return false;">
<div id="left-top">
	<div><img src="images/main/member.gif" width="44" height="44" /></div>
    <span>${admin.a_username}<br>角色：超级管理员</span>
</div>
    <div style="float: left" id="my_menu" class="sdmenu">
      <div class="collapsed">
        <span>系统设置</span>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">后台首页</a>
        <a href="main_list.jsp" target="mainFrame" onFocus="this.blur()">列表页</a>
        <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">列表详细页</a>
        <a href="main_message.jsp" target="mainFrame" onFocus="this.blur()">留言页</a>
        <a href="main_menu.jsp" target="mainFrame" onFocus="this.blur()">栏目管理</a>
      </div>
      <div>
        <span>管理员管理</span>
        <a href="<%=basePath%>toAdminmanage" target="mainFrame" onFocus="this.blur()">管理员列表</a>
        <a href="main_list.jsp" target="mainFrame" onFocus="this.blur()">社区公告</a>
        <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">消息管理</a>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">自定义权限</a>
      </div>
      <div>
        <span>游客管理</span>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">游客列表</a>
        <a href="main_list.jsp" target="mainFrame" onFocus="this.blur()">游客日志</a>
        <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">角色管理</a>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">自定义权限</a>
      </div>
      <div>
        <span>系统设置</span>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">分组权限</a>
        <a href="main_list.jsp" target="mainFrame" onFocus="this.blur()">级别权限</a>
        <a href="main_info.jsp" target="mainFrame" onFocus="this.blur()">角色管理</a>
        <a href="main.jsp" target="mainFrame" onFocus="this.blur()">自定义权限</a>
      </div>
    </div>
</body>
</html>