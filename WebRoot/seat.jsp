<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>订票系统</title>
<link rel="stylesheet" href="./css/homepage.css" />
<link rel="stylesheet" href="./css/single_movie.css" />
<link rel="stylesheet" href="./css/seat.css" />
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
	<div id="seats">
		<form name="form" id="form" method="post">
			<table class="happy">
				<tr>
					<td><p value="1-1" id="1" onclick="purchase(this)" background="">1-1</p></td>
					<td><p value="1-2" id="2" onclick="purchase(this)" background="">1-2</p></td>
					<td><p value="1-3" id="3" onclick="purchase(this)" background="">1-3</p></td>
					<td><p value="1-4" id="4" onclick="purchase(this)" background="">1-4</p></td>
					<td><p value="1-5" id="5" onclick="purchase(this)" background="">1-5</p></td>
					<td><p value="1-6" id="6" onclick="purchase(this)" background="">1-6</p></td>
				</tr>
				<tr>
					<td><p value="2-1" id="7" onclick="purchase(this)" background="">2-1</p></td>
					<td><p value="2-2" id="8" onclick="purchase(this)" background="">2-2</p></td>
					<td><p value="2-3" id="9" onclick="purchase(this)" background="">2-3</p></td>
					<td><p value="2-4" id="10" onclick="purchase(this)" background="">2-4</p></td>
					<td><p value="2-5" id="11" onclick="purchase(this)" background="">2-5</p></td>
					<td><p value="2-6" id="12" onclick="purchase(this)" background="">2-6</p></td>
				</tr>
				<tr>
					<td><p value="3-1" id="13" onclick="purchase(this)" background="">3-1</p></td>
					<td><p value="3-2" id="14" onclick="purchase(this)" background="">3-2</p></td>
					<td><p value="3-3" id="15" onclick="purchase(this)" background="">3-3</p></td>
					<td><p value="3-4" id="16" onclick="purchase(this)" background="">3-4</p></td>
					<td><p value="3-5" id="17" onclick="purchase(this)" background="">3-5</p></td>
					<td><p value="3-6" id="18" onclick="purchase(this)" background="">3-6</p></td>
				</tr>
			</table>

			<table class="unhappy">
				<tr>
					<td style="text-align:left;">
						<input class="return_button" type="button" name="button" value="返回"
							onclick="javascript:location.href='main_customer.jsp'"/>
					</td>		
					<td style="text-align:right;">
						<input class="return_button" type="button" name="button" value="购买"
							onclick="buy()"/>
					</td>	
				</tr>
			</table>
			
		</form>
	</div>
	<script type="text/javascript" src="./js/jquery-1.11.2.js"></script>
	<script type="text/javascript" src="./js/json2.js"></script>
	<script Charset="UTF-8" type="text/javascript">
	var param = new Array();
	var seat = new Array();
	window.onload = change();
	<%
		int k, n;
		String name = (String) request.getAttribute("name");
		request.getSession().setAttribute("name", name);
		boolean[] seats;
		seats = (boolean[]) request.getAttribute("seats");
		
	%>
	function change()
	{
		var isBooked = new Array(18);
		 
		<%for(int i = 0; i != 18; i++) {%>
		 isBooked[<%=i%>] = <%=seats[i]%>;
		<%}%>
		
		
		for(var i=1;i<19;i++)
		{
			if(isBooked[i-1])
			{
				document.getElementById(i).style.background = "gray";
			}
		}
	}
	function purchase(e) {
		var num = e.innerHTML;
		var id = e.id;
		var color = document.getElementById(id).style.background;
		if (color == "gray") {
			alert("此票已售出！");
		} else if(color=="")
		{
			document.getElementById(id).style.background="red";
			param.push(id);
			seat.push(e.innerHTML);
		}
		else
		{
			document.getElementById(id).style.background="";
			param.pop();
			seat.pop();
		}

	}
	
	function buy()
	{
		url = "buyAction!execute.action";
		params={};
		
		var strinfo="";
		var numinfo = 0;
		for (var int = 0; int < seat.length; int++) {
			strinfo = seat[int]+"," + strinfo;
			numinfo = numinfo + Math.pow(2, param[int]-1);
		}
		strinfo = strinfo.substring(0, strinfo.length-1);
		
		params["num"]=numinfo;
		params["info"]=strinfo;
		window.
		$.ajax({
		    type:"POST",
		    url: url,//你的请求程序页面
		    async:"false",//同步：意思是当有返回值以后才会进行后面的js程序。
		    data: params,//请求需要发送的处理数据
		    success:function(msg){
		        if (msg) {//根据返回值进行跳转
		        	window.location.href = "userAction!execute.action";
		        	show();
		        }
		    }
		
	})
	}
	
	function show()
	{
		alert("success!!");
	}
	</script>
	<footer>
	 </footer>
</body>
</html>
