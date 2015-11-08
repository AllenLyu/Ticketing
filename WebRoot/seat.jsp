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
		<script Charset="UTF-8"  type="text/javascript">
			window.onload = change;
			<%
			int k,n;
			String name=(String)request.getSession().getAttribute("name");
			request.getSession().setAttribute("name", name);
			List<String> seates=new ArrayList<String>();
			seates=(List<String>)request.getSession().getAttribute("se");
			%>         function change(){
					 <%
					 String m;
					 for(int i=1;i<=3;i++){
						 for(int l=1;l<=6;l++){
						String number=String.valueOf(i)+"-"+String.valueOf(l);
						 k=0;
						 for(int j=0;j<seates.size();j++){
							 if(seates.get(j).equals(number)){
								 k=1;
							 }
						 }
						 m=String.valueOf((i-1)*6+l);
						 if(k==1){
						%>
						document.getElementById(<%=m%>).style.background="gray";

						<%
						 }
						 }
					 }
					 %>
					 }
					 function purchase(e){
					  var num=e.innerHTML;
					  var id=e.id;
					  var color=document.getElementById(id).style.background;
					 if(color=="gray"){
						 alert("此票已售出！");
					 }
					 else{
					 if(num=="2-5"||num=="2-6"){
					 alert("2-5和2-6是情侣座位，须同时购买，确定购买？");
					 }
						 var flag=window.confirm("确定购买？");
						 if(flag){
						  var form = document.getElementById("form");
						  form.action="seatoneAction!execute.action?time=<s:property value='time'/>&num="+num;
						  form.submit();
						 }
					 }


			}
		</script>
		<header>
			<div>天河订票系统</div>
		</header>
		<div id="seats">
			<form name="form"  id="form" method ="post" >
				<table>
					<tr>
						<td><p value="1-1" id="1"  onclick="purchase(this)">1-1</p></td>
						<td><p value="1-2" id="2"  onclick="purchase(this)">1-2</p></td>
						<td><p value="1-3" id="3"  onclick="purchase(this)">1-3</p></td>
						<td><p value="1-4" id="4"  onclick="purchase(this)">1-4</p></td>
						<td><p value="1-5" id="5"  onclick="purchase(this)">1-5</p></td>
						<td><p value="1-6" id="6"  onclick="purchase(this)">1-6</p></td>
					</tr>
					<tr>
						<td><p value="2-1" id="7"  onclick="purchase(this)">2-1</p></td>
						<td><p value="2-2" id="8"  onclick="purchase(this)">2-2</p></td>
						<td><p value="2-3" id="9"  onclick="purchase(this)">2-3</p></td>
						<td><p value="2-4" id="10"  onclick="purchase(this)">2-4</p></td>
						<td><p value="2-5" id="11"  onclick="purchase(this)">2-5</p></td>
						<td><p value="2-6" id="12"  onclick="purchase(this)">2-6</p></td>
					</tr>
					<tr>
						<td><p value="3-1" id="13"  onclick="purchase(this)">3-1</p></td>
						<td><p value="3-2" id="14"  onclick="purchase(this)">3-2</p></td>
						<td><p value="3-3" id="15"  onclick="purchase(this)">3-3</p></td>
						<td><p value="3-4" id="16"  onclick="purchase(this)">3-4</p></td>
						<td><p value="3-5" id="17"  onclick="purchase(this)">3-5</p></td>
						<td><p value="3-6" id="18"  onclick="purchase(this)">3-6</p></td>
					</tr>
				</table>

				<input class="return_button" type="button" name="button" value="返回" onclick="javascript:location.href='main_customer.jsp'"/>
			</form>
		</div>
		<footer>
		</footer>
	</body>
</html>
