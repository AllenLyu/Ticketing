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
    
    <title>My JSP 'user_center.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" href="./css/homepage.css" />
    <link rel="stylesheet" href="./css/movie_show.css" />
    <link rel="stylesheet" href="./css/single_movie.css" />
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
        <jsp:include page="./header.jsp" flush="true"/>
        <div id="single_movie" class="movie_unit">
        	<table border = "1px" style = "margin:auto">
            <s:iterator value="trades" >
            	<tr>
                
                    <td><li id="name">购票记录</li></td>
                    <td><li>价格:<s:property value="price"/></li></td>
                    <td><li>信息:<s:property value="info"/></li></td>
                
                </tr>
            </s:iterator>
            </table>
        </div>
        <div id="single_movie" class="movie_unit">
        	<table border = "1px" style = "margin:auto">
            <s:iterator value="trades" >
            	<tr>
                
                    <td><li id="name">购票记录</li></td>
                    <td><li>价格:<s:property value="price"/></li></td>
                    <td><li>信息:<s:property value="info"/></li></td>
                
                </tr>
            </s:iterator>
            </table>
        </div>
        <footer>
        </footer>
    </body>
</html>
