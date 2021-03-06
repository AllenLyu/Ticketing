<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
    <div id="wrap_movies">
        <s:iterator value="movies" >
            <div class="movie_unit">
                <img class="movie_poster" src="<s:property value='Poster' />" />
                <ul class="movie_detail">
                    <li>影片:<s:property value="Name"/></li>
                    <li>导演:<s:property value="Director"/></li>
                    <li>演员:<s:property value="Actor"/></li>
                    <li>类型:<s:property value="Type"/></li>
                    <li>价格:<s:property value="Price"/>&nbsp;学生价格:<s:property value="Sprice"/></li>
                    <li>时间:<s:property value="Data"/></li>
                    <li><s:property value="ItemOne"/></li>
                    <li><s:property value="ItemTwo"/></li>
                </ul>
            </div>
         </s:iterator>
    </div>
  	<input class="return_button" type="button" name="button" value="返回" onclick="javascript:location.href='main_manager.jsp'"/>
    <footer>
    </footer>
  </body>
</html>
