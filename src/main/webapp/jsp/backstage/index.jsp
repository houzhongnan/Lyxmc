<!doctype html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>四川成都旅游网站后台管理系统</title>
	<link rel="shortcut icon" href="images/favicon.ico" />
	<link href="<%=basePath%>jsp/backstage/css/css.css" type="text/css" rel="stylesheet" />
</head>
<!--框架样式-->
<frameset rows="95,*,30" cols="*" frameborder="no" border="0" framespacing="0">
	<!--top样式-->
	<frame src="<%=basePath%>jsp/backstage/top.jsp" name="topframe" scrolling="no" noresize id="topframe" title="topframe" />
	<!--contact样式-->
	<frameset id="attachucp" framespacing="0" border="0" frameborder="no" cols="194,12,*" rows="*">
		<frame scrolling="auto" noresize="" frameborder="no" name="leftFrame" src="<%=basePath%>jsp/backstage/left.jsp"></frame>
		<frame id="leftbar" scrolling="no" noresize="" name="switchFrame" src="<%=basePath%>jsp/backstage/swich.jsp"></frame>
		<frame scrolling="auto" noresize="" border="0" name="mainFrame" src="<%=basePath%>jsp/backstage/main.jsp"></frame>
	</frameset>
	<!--bottom样式-->
	<frame src="<%=basePath%>jsp/backstage/bottom.jsp" name="bottomFrame" scrolling="No" noresize="noresize" id="bottomFrame" title="bottomFrame" />
</frameset><noframes></noframes>
<!--不可以删除-->
</html>