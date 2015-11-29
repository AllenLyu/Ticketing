<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<header>
<div>
		<div id="title">在线订票系统</div> 
		<div id="username"><%out.print(session.getAttribute("username")); %></div> 
</div>
</header>