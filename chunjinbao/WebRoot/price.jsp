<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>








<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<METAHTTP-EQUIV ="Pragma"CONTENT="no-cache"> 
<METAHTTP-EQUIV ="Cache-Control"CONTENT="no-cache">
<METAHTTP-EQUIV ="Expires"CONTENT="0">
<title>购金宝</title>
<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="plug-in/wechat/css/public.css">
<script src="plug-in/wechat/js/jquery.min.js"></script>
<script src="plug-in/echart/demo.js"></script>
<link rel="stylesheet" href="plug-in/wechat/css/more.css">
<script src="plug-in/wechat/js/radialindicator.js"></script>

<script type="text/javascript">
		$(function(){
			setGoldPrice();
			setInterval("setGoldPrice()",3000);
		}); 
		
		function setGoldPrice(){
			$.ajax({
			    type:"POST",
			    url:"/chunjinbao/util_rtGoldPrice",
			    dataType:"text",
			    success:function(result){$("#goldPrice").html(result);},
			    error:function(msg){}
			});
		}
	</script>
</head>
<body style="overflow-y: hidden;overflow-x: hidden;">
	<div  class="con" id="chart1" style=" height: 270px;" width="100%">
					    
					</div>
	<section class="warp" >
		<div class="gold" style="margin-bottom:60px;">
			<h1> 实时金价：<b id="goldPrice"></b>元/克 </h1>
			<div class="gold_tabs" width="100%">
				<div class="gold_tabs_hd">
			
					<ul class="clearfix">
						<li name="#tab1" onclick="dayP();"><a href="javascript:void(0)">24小时</a></li>
						<li name="#tab2" onclick="weekP()"><a href="javascript:void(0)">7日</a></li>
						<li name="#tab3" onclick="monthP()"><a href="javascript:void(0)">30日</a></li>
					</ul>
				</div>
				<div class="gold_tabs_bd " style="text-align:center;" >
					<div  class="con" id="chart1" style=" height: 270px;" width="100%">
					    
					</div>
					<div class="con" id="tab2"  style="height: 270px; " width="100%">
						
					</div>
					<div class="con" id="tab3" style="height: 270px; "width="100%" >
						
					</div>
				</div>

			</div>
			
		</div>
	<nav>
		<!--底部导航-->
        
		
<nav>
	<ul class="clearfix">
    	<li><a href="/chunjinbao/nav_index" class="active"><i class="n1"></i>首页</a></li>
        <li><a href="/chunjinbao/nav_products" ><i class="n2"></i>淘金</a></li>
        <li><a href="/chunjinbao/nav_gold" ><i class="n3"></i>金库</a></li>
        <li><a href="/chunjinbao/nav_more"  ><i class="n4"></i>我的</a></li>
    </ul>
</nav>

		<!--end底部导航-->
    </nav>
	</section>



</body>
</html>