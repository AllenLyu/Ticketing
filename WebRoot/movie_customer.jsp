<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
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
    <link rel="stylesheet" href="./css/movie_show.css" />
    <link rel="stylesheet" href="./css/single_movie.css" />

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
        <div id="single_movie" class="movie_unit">
            <s:iterator value="movies" >
                <img class="movie_poster" src="<s:property value='Poster'/>">
                <ul class="movie_detail">
                    <li>影片:<s:property value="Name"/></li>
                    <li>导演:<s:property value="Director"/></li>
                    <li>演员:<s:property value="Actor"/></li>
                    <li>类型:<s:property value="Type"/></li>
                    <li>价格:<s:property value="Price"/>&nbsp;学生价格:<s:property value="Sprice"/></li>
                </ul>
                <div id="plays">
                    <h3>场次</h3>
                    <p name="button1" onclick="window.location.href='seatAction!execute.action?name=<s:property value="Name"/>&time=<s:property value="ItemOne"/>'"><s:property value='ItemOne'/></p>
                    <p name="button2" onclick="window.location.href='seatAction!execute.action?name=<s:property value="Name"/>&time=<s:property value="ItemTwo"/>'"><s:property value='ItemTwo'/></p>
                </div>
            </s:iterator>
        </div>
        <footer>
        </footer>
    </body>
</html>
