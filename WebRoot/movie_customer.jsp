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
	<script type="text/javascript" src="./js/jquery-1.11.2.js"></script>
	<script type="text/javascript">
	function postData(flag) {
		url = "seatAction!execute.action";
		params={};
		name = document.getElementById("name").innerHTML.slice(3);
		var time;
		params["name"]=name;
		if(""==flag)
		{
			alert("抱歉，该时间本影片还没准备好被您看QAQ");
		}
		else 
		{
			if("8:30--11:30"==flag)
			{
				time = 1;
				params["flag"]=1;
			}
			else
			{
				time = 0;
				params["flag"]=0;
			}
			//$.post(url,params);
			$.ajax({
			    type:"POST",
			    url: url,//你的请求程序页面随便啦
			    async:"false",//同步：意思是当有返回值以后才会进行后面的js程序。
			    data: params,//请求需要发送的处理数据
			    success:function(msg){
			        if (msg) {//根据返回值进行跳转
			            window.location.href = url+"?name="+name+"&flag="+time;
			        }
			    }
			
		})
	}
	}
	</script>
  </head>
  
    <body>
        <header>
            <div>天河订票系统</div>
        </header>
        <div id="single_movie" class="movie_unit">
            <s:iterator value="movies" >
                <img class="movie_poster" src="<s:property value='Poster'/>">
                <ul class="movie_detail">
                    <li id="name">影片:<s:property value="Name"/></li>
                    <li>导演:<s:property value="Director"/></li>
                    <li>演员:<s:property value="Actor"/></li>
                    <li>类型:<s:property value="Type"/></li>
                    <li>价格:<s:property value="Price"/>&nbsp;学生价格:<s:property value="Sprice"/></li>
                </ul>
                <div id="plays">
                    <h3>场次</h3>
                    <p type="submit" name="button1" onclick="postData(this.innerHTML)"><s:property value='ItemOne'/></p>
                    <p type="submit" name="button2" onclick="postData(this.innerHTML)"><s:property value='ItemTwo'/></p>
                </div>
            </s:iterator>
        </div>
        <footer>
        </footer>
    </body>
</html>
