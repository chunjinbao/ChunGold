<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script language="JavaScript" src="jquery-1.12.0.js"></script>
	<script type="text/javascript">
		$(function(){
			setInterval("setGoldPrice()",3000);
		}); 
		
		function setGoldPrice(){
			$.ajax({
			    type:"POST",
			    url:"/chunjinbao/util_rtGoldPrice",
			    dataType:"text",
			    success:function(result){$("#goldPrice").html(result);var today=new Date();
			    var s=today.getMilliseconds();$("#count").html(s);},
			    error:function(msg){}
			});
		}
	</script>
  </head>
  
  <body>
    This is my JSP page. <br>
    当前登录用户：<%=session.getAttribute("curUsrName").toString()%>
    <label id="goldPrice"></label>
    <label id="count"></label>
  </body>
</html>
