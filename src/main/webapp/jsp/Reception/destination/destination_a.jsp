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
		<link rel="stylesheet" href="<%=basePath %>jsp/Reception/css/destination/destination_a.css">
	<style type="text/css">
		a:link,
		a:visited {
			text-decoration: none;
			/*超链接无下划线*/
		}
	</style>

	<body style="overflow:-Scroll;overflow-x:hidden">
		<div id="top">您所在的位置：
			<a href="../index.html" style="color:#AAAAAA">首页>></a>
			<a href="destination.jsp" style="color: #AAAAAA">目的地>></a>详情介绍</div>
		<div class="picture_details">
			<input name="id" type="hidden" value="${requestScope.destination.id }"/>
			<h1>${requestScope.destination.d_name }简介</h1>

			<h2>${requestScope.destination.d_route }</h2>

			<div class="picture">
				<img class="picture_a" src="${requestScope.destination.d_image }" width="600" height="400">
				<img class="picture_b" src="${requestScope.destination.d_image_a }" width="280" height="195">
				<img class="picture_c" src="${requestScope.destination.d_image_b }" width="280" height="195">
			</div>
			<h2>${requestScope.destination.d_name }：</h2>
			<p>${requestScope.destination.d_introduce }
			</p>
			</span>
		</div>
		</div>
	</body>
</html>