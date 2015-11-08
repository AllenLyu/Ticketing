<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<title>订票系统</title>
	<link rel="stylesheet" href="./css/homepage.css" />
	<link rel="stylesheet" href="./css/main_customer.css" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
	<header>
		<div>天河订票系统</div>
	</header>
		<div id="wrap_content">
			<div id="content">
				<div class="menu">
					<p name="button1" onclick="window.location.href='movies_customerAction!execute.action'">选择电影</p>
					<p name="button3" onclick="window.location.href='timestartAction!execute.action'">时间轴查看电影</p>
					<p name="button2" onclick="javascript:location.href='login.jsp'"/>返回</p>
				</div>
				<img src="./images/film.png"/>
			</div>
		</div>
		<footer>
		</footer>
  </body>
</html>
