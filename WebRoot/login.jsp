<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>订票系统</title>
		<link rel="stylesheet" href="./css/homepage.css" />
	</head>
	<body>
		<header>
			<div id = "title">在线订票系统</div>
		</header>
		<div id="wrap_content">
			<div id="content">
				<div id="poster">
					<img src="./images/cinema_poster.png" />
				</div>
				<div id="select">
					<div id="select_description">输入您的用户名密码</div>
					<div id="select_group">
						<form id="login_form" action="loginAction!execute.action" method="post">
							用户名：<input id="name" name="name"></input></br>
							密　码：<input id="password" name="pwd" type="password"></input></br>
							　　<input checked="checked" type="radio" name="charactor" value="customer">顾客</input>
							　<input type="radio" name="charactor" value="manager">管理员</input>
						</form>
                        <p id="select_button" onclick="javascript:document.getElementById('login_form').submit()">确 认</p>
                        <p id="select_button2" onclick="javascript:location.href='user_add.jsp'">注 册</p>
					</div>
				</div>
			</div>
		</div>
		<footer>
		</footer>
	</body>

</html>
