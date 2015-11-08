<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>横向时间轴</title>

<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/homepage.css" rel="stylesheet" type="text/css" />
<link href="css/movie_show.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jquery-1.11.2.js"></script>
<script type="text/javascript">


	$(document).ready(function() {
		$("td").click(function () {
			var date=$(this).attr("id");
			//$("#date").val(date);
			var form = document.getElementById("form");
			form.action="timeAction!execute.action?time="+date;
			form.submit();
		});
	});
$(function(){
	

	$('.course_nr2 li').hover(function(){
		$(this).find('.shiji').fadeIn(600);
	},function(){
		$(this).find('.shiji').fadeOut(400);
	});
	
});
</script>

</head>

<body>
	<header>
		<div>天河订票系统</div>
	</header>
<form name="form"  id="form" method ="post">

<div class="clearfix course_nr">
	<ul class="course_nr2">
		<li>
			<h3 >2015年</h3><br/>
			<h3 >1月</h3>
			<div class="shiji">
				<h3>2015年1月份</h3>
				<table>
					<tr>
						<td style="color: red">S</td>
						<td style="color: red">M</td>
						<td style="color: red">T</td>
						<td style="color: red">W</td>
						<td style="color: red">T</td>
						<td style="color: red">F</td>
						<td style="color: red">S</td>
					</tr>
					<tr>
						<td> </td>
						<td> </td>
						<td> </td>
						<td> </td>
						<td id="2015-01-01">1</td>
						<td id="2015-01-02">2</td>
						<td id="2015-01-03">3</td>
					</tr>
					<tr>
						<td id="2015-01-04">4</td>
						<td id="2015-01-05">5</td>
						<td id="2015-01-06">6</td>
						<td id="2015-01-07">7</td>
						<td id="2015-01-08">8</td>
						<td id="2015-01-09">9</td>
						<td id="2015-01-10">10</td>
					</tr>
					<tr>
						<td id="2015-01-11">11</td>
						<td id="2015-01-12">12</td>
						<td id="2015-01-13">13</td>
						<td id="2015-01-14">14</td>
						<td id="2015-01-15">15</td>
						<td id="2015-01-16">16</td>
						<td id="2015-01-17">17</td>
					</tr>
					<tr>
						<td id="2015-01-18">18</td>
						<td id="2015-01-19">19</td>
						<td id="2015-01-20">20</td>
						<td id="2015-01-21">21</td>
						<td id="2015-01-22">22</td>
						<td id="2015-01-23">23</td>
						<td id="2015-01-24">24</td>
					</tr>
					<tr>

						<td id="2015-01-25">25</td>
						<td id="2015-01-26">26</td>
						<td id="2015-01-27">27</td>
						<td id="2015-01-28">28</td>
						<td id="2015-01-29">29</td>
						<td id="2015-01-30">30</td>
						<td id="2015-01-31">31</td>
					</tr>



				</table>
			</div>
		</li>
		<li>
			<h3 >2月</h3>
			<div class="shiji">
				<h3>2015年2月</h3>
				<table>
					<tr>
						<td style="color: red">S</td>
						<td style="color: red">M</td>
						<td style="color: red">T</td>
						<td style="color: red">W</td>
						<td style="color: red">T</td>
						<td style="color: red">F</td>
						<td style="color: red">S</td>
					</tr>
					<tr>
						<td id="2015-02-01">1</td>
						<td  id="2015-02-02">2</td>
						<td  id="2015-02-03">3</td>
						<td  id="2015-02-04">4</td>
						<td  id="2015-02-05">5</td>
						<td  id="2015-02-06">6</td>
						<td  id="2015-02-07">7</td>
					</tr>
					<tr>
						<td  id="2015-02-08">8</td>
						<td  id="2015-02-09">9</td>
						<td  id="2015-02-10">10</td>
						<td  id="2015-02-11">11</td>
						<td  id="2015-02-12">12</td>
						<td  id="2015-02-13">13</td>
						<td  id="2015-02-14">14</td>
					</tr>
					<tr>
						<td  id="2015-02-15">15</td>
						<td  id="2015-02-16">16</td>
						<td  id="2015-02-17">17</td>
						<td  id="2015-02-18">18</td>
						<td  id="2015-02-19">19</td>
						<td  id="2015-02-20">20</td>
						<td  id="2015-02-21">21</td>
					</tr>
					<tr>
						<td  id="2015-02-22">22</td>
						<td  id="2015-02-23">23</td>
						<td  id="2015-02-24">24</td>
						<td  id="2015-02-25">25</td>
						<td  id="2015-02-26">26</td>
						<td  id="2015-02-27">27</td>
						<td  id="2015-02-28">28</td>
					</tr>





				</table>
			</div>
		</li>
		<li>
			<h3 >3月</h3>
			<div class="shiji">
				<h3>2015年3月</h3>
				<table>
					<tr>
						<td style="color: red">S</td>
						<td style="color: red">M</td>
						<td style="color: red">T</td>
						<td style="color: red">W</td>
						<td style="color: red">T</td>
						<td style="color: red">F</td>
						<td style="color: red">S</td>
					</tr>
					<tr>
						<td  id="2015-03-01">1</td>
						<td  id="2015-03-02">2</td>
						<td  id="2015-03-03">3</td>
						<td  id="2015-03-04">4</td>
						<td  id="2015-03-05">5</td>
						<td  id="2015-03-06">6</td>
						<td  id="2015-03-07">7</td>
					</tr>
					<tr>
						<td  id="2015-03-08">8</td>
						<td  id="2015-03-09">9</td>
						<td  id="2015-03-10">10</td>
						<td  id="2015-03-11">11</td>
						<td   id="2015-03-12">12</td>
						<td  id="2015-03-13">13</td>
						<td  id="2015-03-14">14</td>
					</tr>
					<tr>
						<td  id="2015-03-15">15</td>
						<td  id="2015-03-16">16</td>
						<td  id="2015-03-17">17</td>
						<td  id="2015-03-18">18</td>
						<td  id="2015-03-19">19</td>
						<td  id="2015-03-20">20</td>
						<td  id="2015-03-21">21</td>
					</tr>
					<tr>
						<td  id="2015-03-22">22</td>
						<td  id="2015-03-23">23</td>
						<td  id="2015-03-24">24</td>
						<td  id="2015-03-25">25</td>
						<td  id="2015-03-26">26</td>
						<td  id="2015-03-27">27</td>
						<td  id="2015-03-28">28</td>
					</tr>
					<tr>
						<td  id="2015-03-29">29</td>
						<td  id="2015-03-30">30</td>
						<td  id="2015-03-31">31</td>
						<td> </td>
						<td> </td>
						<td>  </td>
						<td>  </td>
					</tr>



				</table>
			</div>
		</li>
		<li>
			<h3 >4月</h3>
			<div class="shiji">
				<h3>2015年4月</h3>
				<table>
					<tr>
						<td style="color: red">S</td>
						<td style="color: red">M</td>
						<td style="color: red">T</td>
						<td style="color: red">W</td>
						<td style="color: red">T</td>
						<td style="color: red">F</td>
						<td style="color: red">S</td>
					</tr>
					<tr>
						<td> </td>
						<td> </td>
						<td> </td>
						<td  id="2015-04-01">1</td>
						<td  id="2015-04-02">2</td>
						<td  id="2015-04-03">3</td>
						<td  id="2015-04-04">4</td>
					</tr>
					<tr>
						<td  id="2015-04-05">5</td>
						<td  id="2015-04-06">6</td>
						<td  id="2015-04-07">7</td>
						<td  id="2015-04-08">8</td>
						<td  id="2015-04-09">9</td>
						<td  id="2015-04-10">10</td>
						<td  id="2015-04-11">11</td>
					</tr>
					<tr>
						<td  id="2015-04-12">12</td>
						<td  id="2015-04-13">13</td>
						<td  id="2015-04-14">14</td>
						<td  id="2015-04-015">15</td>
						<td  id="2015-04-16">16</td>
						<td  id="2015-04-17">17</td>
						<td  id="2015-04-18">18</td>
					</tr>
					<tr>
						<td  id="2015-04-19">19</td>
						<td  id="2015-04-20">20</td>
						<td  id="2015-04-21">21</td>
						<td  id="2015-04-22">22</td>
						<td  id="2015-04-23">23</td>
						<td  id="2015-04-24">24</td>
						<td  id="2015-04-25">25</td>
					</tr>
					<tr><td  id="2015-04-26">26</td>
						<td  id="2015-04-27">27</td>
						<td  id="2015-04-28">28</td>
						<td  id="2015-04-29">29</td>
						<td  id="2015-04-30">30</td>
						<td>  </td>
						<td>  </td>
					</tr>



				</table>
			</div>
		</li>
		<li>
			<h3 >5月</h3>
			<div class="shiji">
				<h3>2015年5月</h3>
				<table>
					<tr>
						<td style="color: red">S</td>
						<td style="color: red">M</td>
						<td style="color: red">T</td>
						<td style="color: red">W</td>
						<td style="color: red">T</td>
						<td style="color: red">F</td>
						<td style="color: red">S</td>
					</tr>
					<tr>
						<td> </td>
						<td> </td>
						<td> </td>
						<td> </td>
						<td> </td>
						<td  id="2015-05-01">1</td>
						<td  id="2015-05-02">2</td>
					</tr>
					<tr>
						<td  id="2015-05-03">3</td>
						<td  id="2015-05-04">4</td>
						<td  id="2015-05-05">5</td>
						<td  id="2015-05-06">6</td>
						<td  id="2015-05-07">7</td>
						<td  id="2015-05-08">8</td>
						<td  id="2015-05-09">9</td>
					</tr>
					<tr>
						<td  id="2015-05-10">10</td>
						<td  id="2015-05-11">11</td>
						<td  id="2015-05-12">12</td>
						<td  id="2015-05-13">13</td>
						<td  id="2015-05-14">14</td>
						<td  id="2015-05-15">15</td>
						<td  id="2015-05-16">16</td>
					</tr>
					<tr>
						<td  id="2015-05-17">17</td>
						<td  id="2015-05-18">18</td>
						<td  id="2015-05-19">19</td>
						<td  id="2015-05-20">20</td>
						<td  id="2015-05-21">21</td>
						<td  id="2015-05-22">22</td>
						<td  id="2015-05-23">23</td>
					</tr>
					<tr>
						<td  id="2015-05-24">24</td>
						<td  id="2015-05-25">25</td>
						<td  id="2015-05-26">26</td>
						<td  id="2015-05-27">27</td>
						<td  id="2015-05-28">28</td>
						<td  id="2015-05-29">29</td>
						<td  id="2015-05-30">30</td>
					</tr>
					<tr>
						<td  id="2015-05-31">31</td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
					</tr>


				</table>
			</div>
		</li>
		<li>
			<h3 >6月</h3>
			<div class="shiji">
				<h3>2015年6月</h3>
				<table>
					<tr>
						<td style="color: red">S</td>
						<td style="color: red">M</td>
						<td style="color: red">T</td>
						<td style="color: red">W</td>
						<td style="color: red">T</td>
						<td style="color: red">F</td>
						<td style="color: red">S</td>
					</tr>
					<tr>
						<td> </td>
						<td  id="2015-06-01">1</td>
						<td  id="2015-06-02">2</td>
						<td  id="2015-06-03">3</td>
						<td  id="2015-06-04">4</td>
						<td  id="2015-06-05">5</td>
						<td  id="2015-06-06">6</td>
					</tr>
					<tr>
						<td  id="2015-06-07">7</td>
						<td  id="2015-06-08">8</td>
						<td  id="2015-06-09">9</td>
						<td  id="2015-06-10">10</td>
						<td  id="2015-06-11">11</td>
						<td  id="2015-06-12">12</td>
						<td  id="2015-06-13">13</td>
					</tr>
					<tr>
						<td  id="2015-06-14">14</td>
						<td  id="2015-06-15">15</td>
						<td  id="2015-06-16">16</td>
						<td  id="2015-06-17">17</td>
						<td  id="2015-06-18">18</td>
						<td  id="2015-06-19">19</td>
						<td  id="2015-06-20">20</td>
					</tr>
					<tr>
						<td  id="2015-06-21">21</td>
						<td  id="2015-06-22">22</td>
						<td  id="2015-06-23">23</td>
						<td  id="2015-06-24">24</td>
						<td  id="2015-06-25">25</td>
						<td  id="2015-06-26">26</td>
						<td  id="2015-06-27">27</td>
					</tr>
					<tr>
						<td  id="2015-06-28">28</td>
						<td  id="2015-06-29">29</td>
						<td  id="2015-06-30">30</td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
					</tr>



				</table>
			</div>
		</li>
		<li>
			<h3 >7月</h3>
			<div class="shiji">
				<h3>2015年7月</h3>
				<table>
					<tr>
						<td style="color: red">S</td>
						<td style="color: red">M</td>
						<td style="color: red">T</td>
						<td style="color: red">W</td>
						<td style="color: red">T</td>
						<td style="color: red">F</td>
						<td style="color: red">S</td>
					</tr>
					<tr>
						<td> </td>
						<td> </td>
						<td> </td>
						<td  id="2015-07-01">1</td>
						<td  id="2015-07-02">2</td>
						<td  id="2015-07-03">3</td>
						<td  id="2015-07-04">4</td>
					</tr>
					<tr>
						<td  id="2015-07-05">5</td>  
						<td  id="2015-07-06">6</td>
						<td  id="2015-07-07">7</td>
						<td  id="2015-07-08">8</td>
						<td  id="2015-07-09">9</td>
						<td  id="2015-07-10">10</td>
						<td  id="2015-07-11">11</td>
					</tr>
					<tr>
						<td  id="2015-07-12">12</td>
						<td  id="2015-07-13">13</td>
						<td  id="2015-07-14">14</td>
						<td  id="2015-07-15">15</td>
						<td  id="2015-07-16">16</td>
						<td  id="2015-07-17">17</td>
						<td  id="2015-07-18">18</td>
					</tr>
					<tr>
						<td  id="2015-07-19">19</td>
						<td  id="2015-07-20">20</td>
						<td  id="2015-07-21">21</td>
						<td  id="2015-07-22">22</td>
						<td  id="2015-07-23">23</td>
						<td  id="2015-07-24">24</td>
						<td  id="2015-07-25">25</td>
					</tr>
					<tr>
						<td  id="2015-07-26">26</td>
						<td  id="2015-07-27">27</td>
						<td  id="2015-07-28">28</td>
						<td  id="2015-07-29">29</td>
						<td  id="2015-07-30">30</td>
						<td  id="2015-07-31">31</td>
						<td>  </td>
					</tr>



				</table>
			</div>
		</li>
		<li>
			<h3 >8月</h3>
			<div class="shiji">
				<h3>2015年8月</h3>
				<table>
					<tr>
						<td style="color: red">S</td>
						<td style="color: red">M</td>
						<td style="color: red">T</td>
						<td style="color: red">W</td>
						<td style="color: red">T</td>
						<td style="color: red">F</td>
						<td style="color: red">S</td>
					</tr>
					<tr>
						<td> </td>
						<td> </td>
						<td> </td>
						<td> </td>
						<td> </td>
						<td> </td>
						<td  id="2015-08-01">1</td>
					</tr>
					<tr>
						<td  id="2015-08-02">2</td>
						<td  id="2015-08-03">3</td>
						<td  id="2015-08-04">4</td>
						<td  id="2015-08-05">5</td>
						<td  id="2015-08-06">6</td>
						<td  id="2015-08-07">7</td>
						<td  id="2015-08-08">8</td>
					</tr>
					<tr>
						<td  id="2015-08-09">9</td>
						<td  id="2015-08-10">10</td>
						<td  id="2015-08-11">11</td>
						<td  id="2015-08-12">12</td>
						<td  id="2015-08-13">13</td>
						<td  id="2015-08-14">14</td>
						<td  id="2015-08-15">15</td>
					</tr>
					<tr>
						<td  id="2015-08-16">16</td>
						<td  id="2015-08-17">17</td>
						<td  id="2015-08-18">18</td>
						<td  id="2015-08-19">19</td>
						<td  id="2015-08-20">20</td>
						<td  id="2015-08-21">21</td>
						<td  id="2015-08-22">22</td>
					</tr>
					<tr>
						<td  id="2015-08-23">23</td>
						<td  id="2015-08-24">24</td>
						<td  id="2015-08-25">25</td>
						<td  id="2015-08-26">26</td>
						<td  id="2015-08-27">27</td>
						<td  id="2015-08-28">28</td>
						<td  id="2015-08-29">29</td>
					</tr>
					<tr>
						<td  id="2015-08-30">30</td>
						<td  id="2015-08-31">31</td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
					</tr>


				</table>
			</div>
		</li>

		<li>
			<h3 >9月</h3>
			<div class="shiji">
				<h3>2015年9月</h3>
				<table>
					<tr>
						<td style="color: red">S</td>
						<td style="color: red">M</td>
						<td style="color: red">T</td>
						<td style="color: red">W</td>
						<td style="color: red">T</td>
						<td style="color: red">F</td>
						<td style="color: red">S</td>
					</tr>
					<tr>
						<td> </td>
						<td> </td>
						<td  id="2015-09-01">1</td>
						<td  id="2015-09-02">2</td>
						<td  id="2015-09-03">3</td>
						<td  id="2015-09-04">4</td>
						<td  id="2015-09-05">5</td>
					</tr>
					<tr>
						<td  id="2015-09-06">6</td>
						<td  id="2015-09-07">7</td>
						<td  id="2015-09-08">8</td>
						<td  id="2015-09-09">9</td>
						<td  id="2015-09-10">10</td>
						<td  id="2015-09-11">11</td>
						<td  id="2015-09-12">12</td>
					</tr>
					<tr>
						<td  id="2015-09-13">13</td>
						<td  id="2015-09-14">14</td>
						<td  id="2015-09-15">15</td>
						<td  id="2015-09-16">16</td>
						<td  id="2015-09-17">17</td>
						<td  id="2015-09-18">18</td>
						<td  id="2015-09-19">19</td>
					</tr>
					<tr>
						<td  id="2015-09-20">20</td>
						<td  id="2015-09-21">21</td>
						<td  id="2015-09-22">22</td>
						<td  id="2015-09-23">23</td>
						<td  id="2015-09-24">24</td>
						<td  id="2015-09-25">25</td>
						<td  id="2015-09-26">26</td>
					</tr>
					<tr>
						<td  id="2015-09-27">27</td>
						<td  id="2015-09-28">28</td>
						<td  id="2015-09-29">29</td>
						<td  id="2015-09-30">30</td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
					</tr>


				</table>
			</div>
		</li>
		<li>
			<h3 >10月</h3>
			<div class="shiji">
				<h3>2015年10月</h3>
				<table>
					<tr>
						<td style="color: red">S</td>
						<td style="color: red">M</td>
						<td style="color: red">T</td>
						<td style="color: red">W</td>
						<td style="color: red">T</td>
						<td style="color: red">F</td>
						<td style="color: red">S</td>
					</tr>
					<tr>
						<td> </td>
						<td> </td>
						<td> </td>
						<td> </td>
						<td  id="2015-10-01">1</td>
						<td  id="2015-10-02">2</td>
						<td  id="2015-10-03">3</td>
					</tr>
					<tr>
						<td  id="2015-10-04">4</td>
						<td  id="2015-10-05">5</td>
						<td  id="2015-10-06">6</td>
						<td  id="2015-10-07">7</td>
						<td  id="2015-10-08">8</td>
						<td  id="2015-10-09">9</td>
						<td  id="2015-10-10">10</td>
					</tr>
					<tr>
						<td  id="2015-10-11">11</td>
						<td  id="2015-10-12">12</td>
						<td  id="2015-10-13">13</td>
						<td  id="2015-10-14">14</td>
						<td  id="2015-10-15">15</td>
						<td  id="2015-10-16">16</td>
						<td  id="2015-10-17">17</td>
					</tr>
					<tr>
						<td  id="2015-10-18">18</td>
						<td  id="2015-10-19">19</td>
						<td  id="2015-10-20">20</td>
						<td  id="2015-10-21">21</td>
						<td  id="2015-10-22">22</td>
						<td  id="2015-10-23">23</td>
						<td  id="2015-10-24">24</td>
					</tr>
					<tr>
						<td  id="2015-10-25">25</td>
						<td  id="2015-10-26">26</td>
						<td  id="2015-10-27">27</td>
						<td  id="2015-10-28">28</td>
						<td  id="2015-10-29">29</td>
						<td  id="2015-10-30">30</td>
						<td  id="2015-10-31">31</td>
					</tr>


				</table>
			</div>
		</li>
		<li>
			<h3 >11月</h3>
			<div class="shiji">
				<h3>2015年11月</h3>
				<table>
					<tr>
						<td style="color: red">S</td>
						<td style="color: red">M</td>
						<td style="color: red">T</td>
						<td style="color: red">W</td>
						<td style="color: red">T</td>
						<td style="color: red">F</td>
						<td style="color: red">S</td>
					</tr>
					<tr>
						<td  id="2015-11-01">1</td>
						<td  id="2015-11-02">2</td>
						<td  id="2015-11-03">3</td>
						<td  id="2015-11-04">4</td>
						<td  id="2015-11-05">5</td>
						<td  id="2015-11-06">6</td>
						<td  id="2015-11-07">7</td>
					</tr>
					<tr>
						<td  id="2015-11-08">8</td>
						<td  id="2015-11-09">9</td>
						<td  id="2015-11-10">10</td>
						<td  id="2015-11-11">11</td>
						<td  id="2015-11-12">12</td>
						<td  id="2015-11-13">13</td>
						<td  id="2015-11-14">14</td>
					</tr>
					<tr>
						<td  id="2015-11-15">15</td>
						<td  id="2015-11-16">16</td>
						<td  id="2015-11-17">17</td>
						<td  id="2015-11-18">18</td>
						<td  id="2015-11-19">19</td>
						<td  id="2015-11-20">20</td>
						<td  id="2015-11-21">21</td>
					</tr>
					<tr>
						<td  id="2015-11-22">22</td>
						<td  id="2015-11-23">23</td>
						<td  id="2015-11-24">24</td>
						<td  id="2015-11-25">25</td>
						<td  id="2015-11-26">26</td>
						<td  id="2015-11-27">27</td>
						<td  id="2015-11-28">28</td>
					</tr>
					<tr>
						<td  id="2015-11-29">29</td>
						<td  id="2015-11-30">30</td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
						<td>  </td>
					</tr>


				</table>
			</div>
		</li>
		<li>
			<h3 >12月</h3>
			<div class="shiji">
				<h3>2015年12月</h3>
				<table>
					<tr>
						<td style="color: red">S</td>
						<td style="color: red">M</td>
						<td style="color: red">T</td>
						<td style="color: red">W</td>
						<td style="color: red">T</td>
						<td style="color: red">F</td>
						<td style="color: red">S</td>
					</tr>
					<tr>
						<td> </td>
						<td> </td>
						<td  id="2015-12-01">1</td>
						<td  id="2015-12-02">2</td>
						<td  id="2015-12-03">3</td>
						<td  id="2015-12-04">4</td>
						<td  id="2015-12-05">5</td>
					</tr>
					<tr>
						<td  id="2015-12-06">6</td>
						<td  id="2015-12-07">7</td>
						<td  id="2015-12-08">8</td>
						<td  id="2015-12-09">9</td>
						<td  id="2015-12-10">10</td>
						<td  id="2015-12-11">11</td>
						<td  id="2015-12-12">12</td>
					</tr>
					<tr>
						<td  id="2015-12-13">13</td>
						<td  id="2015-12-14">14</td>
						<td  id="2015-12-15">15</td>
						<td  id="2015-12-16">16</td>
						<td  id="2015-12-17">17</td>
						<td  id="2015-12-18">18</td>
						<td  id="2015-12-19">19</td>
					</tr>
					<tr>
						<td  id="2015-12-20">20</td>
						<td  id="2015-12-21">21</td>
						<td  id="2015-12-22">22</td>
						<td  id="2015-12-23">23</td>
						<td  id="2015-12-24">24</td>
						<td  id="2015-12-25">25</td>
						<td  id="2015-12-26">26</td>
					</tr>
					<tr>
						<td  id="2015-12-27">27</td>
						<td  id="2015-12-28">28</td>
						<td  id="2015-12-29">29</td>
						<td  id="2015-12-30">30</td>
						<td  id="2015-12-31">31</td>
						<td>  </td>
						<td>  </td>
					</tr>
				</table>
			</div>
		</li>
	</ul>
</div>
<br/>

</form>
	<div>
  <%String flag=(String)request.getSession().getAttribute("flag") ;
   if(flag!=null&&flag.equals("2")){%>
        <s:iterator value="movies" >
            <div class="movie_unit">
               <img class="movie_poster" src=<s:property value="Poster"/> >
               <ul class="movie_detail">
                    <li>影片:<s:property value="Name"/></li>
                    <li>导演:<s:property value="Director"/></li>
                    <li>演员:<s:property value="Actor"/></li>
                    <li>类型:<s:property value="Type"/></li>
                    <li>价格:<s:property value="Price"/></li>
                    <li>时间:<s:property value="Data"/></li>
                </ul>

            </div>
        </s:iterator>
   <%} %>
</div>

	<input class="return_button" type="button" name="button" value="返回" onclick="javascript:location.href='main_customer.jsp'"/>
	<footer>
	</footer>
</body>
</html>
