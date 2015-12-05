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
	<link rel="stylesheet" href="./css/movie_add.css" />
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
	<jsp:include page="./header.jsp" flush="true"/>
    <form action="userAddAction!execute.action"  method="post" ">
	<ul>
		<li><p>用户名:</p><input type="text" name="name"/></li>
		<li><p>密码:</p><input type="password"name="pwd"/></li>
		<li><p>手机号:</p><input type="text" name="phone"/></li>
		<li><p>性别:</p><input checked="checked" type="radio" name="sex" value="男">男</input><input checked="checked" type="radio" name="sex" value="女">女</input><br/></li>
		<li>
			<input class="return_button" id="add" type="submit" name="add" value="注册"/>
			<input class="return_button" id="cancel" type="button" name="delete" value="取消" onclick="javascript:location.href='main_manager.jsp'"/>
		</li>
	</ul>
    </form>
	<footer>
	</footer>
  </body>
</html>
