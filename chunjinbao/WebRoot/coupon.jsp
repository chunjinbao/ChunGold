<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>








<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<METAHTTP-EQUIV ="Pragma"CONTENT="no-cache"> <METAHTTP-EQUIV
	="Cache-Control"CONTENT="no-cache"> <METAHTTP-EQUIV
	="Expires"CONTENT="0">
<title>购金卷</title>
<meta name="viewport"
	content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="plug-in/wechat/css/public.css">
<script src="plug-in/wechat/js/jquery.min.js"></script>
</head>
<body>
	<section class="warp">
	<div class="privilege_gold" style="margin-bottom: 55px;">
			<div class="privilege_gold_hd">
				<ul class="clearfix">
					<li name="#tab1"><a href="#">未使用</a></li>
					<li name="#tab2"><a href="#">已使用</a></li>
				</ul>
			</div>
			<div class="privilege_gold_bd">
			
		<div class="con" id="tab1">
		
		
		<div class="plus_coupons">
		
			<ul>
				<s:iterator id="showCoupon" value="couponUnuse">
				
					<li class="regularly_item"><span><s:property value="money"/></span> <span>
									<p>使用范围：<font style="color:#ffa726"><s:property value="usable"/></font></p>
									<p>获得时间：    <s:property value="obtainTime"/></p>
									<p>过期时间： <s:property value="direTime"/></p>
									<p></p>
							</span>
				   </li>
				</s:iterator>
			</ul>
			</div>
			
			
		
		
			
			
		</div>
		
	
		<div class="con" id="tab2">
		
		 	<div class="plus_coupons">
		
			<ul>
				<s:iterator id="showCoupon" value="couponUse">
				
					<li class="regularly_item"><span><s:property value="money"/></span> <span>
									<p>使用范围：<font style="color:#ffa726"><s:property value="usable"/></font></p>
									<p>获得时间：    <s:property value="obtainTime"/></p>
									<p>过期时间： <s:property value="direTime"/></p>
									<p></p>
							</span>
				   </li>
				</s:iterator>
			</ul>
			</div>
			
	  
		 
	  
	</div>
		<script type="text/javascript">
				function resetTabs(){
					$(".privilege_gold_bd > .con").hide();
					$(".privilege_gold_hd li").attr("class","");
				}
				
				var myUrl = window.location.href;
				var myUrlTab = myUrl.substring(myUrl.indexOf("#")); 
				var myUrlTabName = myUrlTab.substring(0,4);
				
				(function(){
					$(".privilege_gold_bd > .con").hide();
					$(".privilege_gold_hd li:first").attr("class","on");
					$(".privilege_gold_bd > .con:first").fadeIn();
				
					$(".privilege_gold_hd li").on("click",function(e) {
						e.preventDefault();
						if ($(this).attr("class") == "on"){
							return       
						}else{             
							resetTabs();
							$(this).attr("class","on");
							$($(this).attr('name')).fadeIn();
						}
					});
				
					for (i = 1; i <= $(".privilege_gold_hd li").length; i++) {
						if(myUrlTab == myUrlTabName + i){
							resetTabs();
							$("a[name='"+myUrlTab+"']").attr("class","on");
							$(myUrlTab).fadeIn();
						}
					}
				})()
			</script>
		
		
		</div>
		<nav>
			<!--底部导航-->
	        
			
<nav>
	<ul class="clearfix">
    	<li><a href="/chunjinbao/nav_index" ><i class="n1"></i>首页</a></li>
        <li><a href="/chunjinbao/nav_products" ><i class="n2"></i>淘金</a></li>
        <li><a href="/chunjinbao/nav_gold" class="active"><i class="n3"></i>金库</a></li>
        <li><a href="/chunjinbao/nav_more"  ><i class="n4"></i>我的</a></li>
    </ul>
</nav>

			<!--end底部导航-->
       </nav>
	</section>
</body>
</html>