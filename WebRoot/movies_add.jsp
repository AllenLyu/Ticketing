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
	<header>
		<div>天河订票系统</div>
	</header>
    <form action="movies_addAction!execute.action"  method="post">
	<ul>
		<li><p>影片名:</p><input type="text" name="name"/></li>
		<li><p>图片名:</p><input type="file"name="poster"/></li>
		<li><p>导演:</p><input type="text" name="director"/></li>
		<li><p>主演:</p><input type="text" name="actor"/></li>
		<li><p>类型:</p><input type="text" name="type"/></li>
		<li><p>价格:</p><input type="text" name="price"/></li>
		<li><p>时间段:</p><input placeholder="示例：2015-05-11" type="text" name="data"/></li>
		<li><p>场次1:</p><input type="text" name="item1"/><br/></li>
		<li><p>场次2:</p><input type="text" name="item2"/><br/></li>
		<li>
			<input class="return_button" id="add" type="submit" name="add" value="添加"/>
			<input class="return_button" id="cancel" type="button" name="delete" value="取消" onclick="javascript:location.href='main_manager.jsp'"/>
		</li>
	</ul>
    </form>
	<footer>
	</footer>
  </body>
</html>
