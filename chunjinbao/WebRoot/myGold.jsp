<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<title>我的金库</title>
<meta name="viewport"
	content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<script src="plug-in/wechat/js/jquery.min.js"></script>
<link rel="stylesheet" href="plug-in/wechat/css/public.css">
<link rel="stylesheet" href="plug-in/wechat/css/layer.css">
<script src="plug-in/wechat/js/layer.m.js"></script>
</head>
<body>
	<section class="warp">		
		
		<!-- 我的金库 -->
		
		<div class="treasury">
			<div class="treasury_hd">
				<div class="treasury_hd_balance">
					<a href="wxBankbookController.do?gjbProfitJournal">
						<span style="float: right;">收益明细 <img src="plug-in/wechat/images/icon88.png" width="10"></span>	
						<p>我的黄金(克) </p>
						<p>
							<b>0.0000</b>
						</p>
					</a>
				</div>
				<ul class="clearfix">
					<li>
					    <a href="wxGoldController.do?gjbGoldCurrent">
						    <p>
						    
						   		<b style="font-size: 16px;">0</b>
						     
						     
								
							</p>
							<p>活期金（克）</p>
						</a>
						</li>
					<li>
					    <a href="wxGoldController.do?gjbGoldRegular">
						    <p>
						     	
						   		<b style="font-size: 16px;">0</b>
						     
						     
						     
								
							</p>
							</p>
							<p>定期金（克）</p>
							</a>
						</li>
				</ul>
			</div>
			<div class="treasury_bd">
				<ul>
					<li>
						<a href="javascript:readYugu();">
						<span id="totalMoney" style="margin-right: 10px;color:orange;font-weight: 700;">
							
						</span>
						<i><img src="plug-in/wechat/images/icon13.png"></i>黄金预估市值（元）</a>
					</li>
					<li>
						<a href="javascript:readFdAmt();">
						<span style="margin-right: 10px;color:orange;font-weight: 700;">
							0.00
						</span>
						<i><img src="plug-in/wechat/images/icon10.png"></i>活期金浮动盈亏（元）</a>
					</li>
					<li>
						<a href="javascript:readFdAmt();">
						<span style="margin-right: 10px;color:orange;font-weight: 700;">
							0.00
						</span>
						<i><img src="plug-in/wechat/images/icon10.png"></i>定期金浮动盈亏（元）</a>
					</li>
					
				</ul>
			</div>
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
<script type="text/javascript">
$(function(){
	$.ajax({
		url: 'wxGoldController.do?getGold',
		type:"post",
		data:{},
		dataType:"json",
		success:function(result){
	
			$("#totalMoney").html((parseFloat(result) * 0.0000).toFixed(2));
		}
	});
});
function readFdAmt(){
	
	layer.open({
        content: '盈亏计算公式：<br><br>浮动盈亏 = （实时金价 - 可计价黄金买入均价）× 持有黄金克重',
        btn: ['确 定']
    });
}
function readYugu(){
	
	layer.open({
        content: '市值计算公式：<br><br>预估市值 = 实时金价 × 持有黄金克重',
        btn: ['确 定']
    });
}
</script>
</body>
</html>
