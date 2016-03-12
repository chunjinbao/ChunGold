<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>







<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<METAHTTP-EQUIV="Pragma"CONTENT="no-cache">
<METAHTTP-EQUIV="Cache-Control"CONTENT="no-cache">
<METAHTTP-EQUIV="Expires"CONTENT="0">
<title>金库</title>
<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="plug-in/wechat/css/public.css">
</head>
<body style="overflow-y: hidden;overflow-x: hidden;">
	<section class="warp">

		<div class="treasury">
			<div class="treasury_hd">
				<div class="treasury_hd_balance">
					<a href="wxBankbookController.do?gjbProfitJournal">
						<span style="float: right;">收益明细 <img src="plug-in/wechat/images/icon88.png" width="10"></span>					
						<p>昨日收益（元）</p>
						<p>
							 
						   		<b>
						   		0.00 
					           </b>
						 
								
						</p>
					</a>
				</div>
				<ul class="clearfix">
					<li>
					    <a href="wxGoldController.do?gjbGold">
						    <p>
						    
								<b style="font-size: 16px;">0.0000
							 
						 	  </b>
							</p>
							<p>我的黄金（克）</p>
						</a>
					</li>
					<li>
					    <a href="wxGoldController.do?gjbGold">
						    <p>
								<b style="font-size: 16px;">
									0.00
									 
								</b>
							</p>
							<p>浮动盈亏（元）</p>
						</a>
					</li>
				</ul>
			</div>
			
			<div class="treasury_bd">
				<ul>
					
					<li style="margin-top:10px;margin-bottom:0px;border-bottom:1px solid #e2e2e2;border-top:1px solid #e2e2e2;">
						<a href="wxGoldController.do?gjbGoldExtractDetail">
						<span><img src="plug-in/wechat/images/icon8.png" width="10"></span>
						<i><img src="plug-in/wechat/images/pic1313.png"></i>提取黄金</a>
					</li>
				<!-- 	<li style="border-top:1px solid #e2e2e2;">
						<a href="wxDepositGoldController.do?toDepositGoldStore">
						<span><img src="plug-in/wechat/images/icon8.png" width="10"></span>
						<i><img src="plug-in/wechat/images/cj.png"></i>预约存金</a>
					</li> -->
					<li style="margin-top:10px;margin-bottom:0px;border-bottom:none;border-top:1px solid #e2e2e2;">
						<a href="wxBankbookController.do?gjbWallert">
						<span style="color:orange;font-weight: 700;">4.50<img src="plug-in/wechat/images/icon8.png" width="10"></span>
						<i><img src="plug-in/wechat/images/pic1212.png"></i>我的钱包（元）</a>
					</li>
					
					<li>
						<a href="wxBankbookController.do?gjbWallertRecharge" style="border-top:1px solid #e2e2e2;">
						<span><img src="plug-in/wechat/images/icon8.png" width="10"></span>
						<i><img src="plug-in/wechat/images/icon37.png"></i>在线充值</a>
					</li>
					<li>
						<a href="wxBankbookController.do?gjbWallertWithdrawal">
						<span><img src="plug-in/wechat/images/icon8.png" width="10"></span>
						<i><img src="plug-in/wechat/images/tixian.png"></i>钱包提现</a>
					</li>
					
					
					<li style="margin-top:10px;margin-bottom:0px;border-bottom:none;border-top:1px solid #e2e2e2;">
					<a href="wxExperController.do?gjbExperBalance"><span style="color:orange;font-weight: 700;">
					 		
						    30
						    
						    
							<img src="plug-in/wechat/images/icon8.png" width="10"></span><i>
							<img src="plug-in/wechat/images/icon38.png"></i>
							
							特权黄金（克）
							
							</a></li>
					
					<li>
						<a href="wxCouponController.do?gjbCouponReceive" style="border-top:1px solid #e2e2e2;"><span style="color:orange;font-weight: 700;">
						
						100
						<img src="plug-in/wechat/images/icon8.png" width="10"></span><i>
						<img src="plug-in/wechat/images/icon41.png"></i>购金券（元）</a></li>
					
						
					<li><a href="wxSpreadBonusController.do?gjbSpreadBonus"><span style="color:orange;font-weight: 700;">
					0
						  
						
						<img src="plug-in/wechat/images/icon8.png" width="10"></span><i>
						<img src="plug-in/wechat/images/icon42.png"></i>推荐奖励（元）</a></li>
					
					<!-- <li><a href="#"><span>0元<img
								src="plug-in/wechat/images/icon8.png" width="10"></span><i><img
								src="plug-in/wechat/images/icon43.png"></i>活动奖励</a></li> -->
					<li><a href="wxShopOrderController.do?productList"><span><img
								src="plug-in/wechat/images/icon8.png" width="10"></span><i><img
								src="plug-in/wechat/images/icon43.png"></i>金币兑换</a></li>
								
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

</body>
</html>
