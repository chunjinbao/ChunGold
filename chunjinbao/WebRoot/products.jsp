<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>








<!DOCTYPE html>
<html manifest="aa.appcache">
<head>
<meta charset="utf-8">
<title>淘金</title>
<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="plug-in/wechat/css/public.css">
</head>
<body >
<div style='margin:0 auto;width:0px;height:0px;overflow:hidden;'>
 	<img src="plug-in/wechat/images/300.jpg" width='350'>
</div>
	<section class="warp">
    
            <div class="regularly_con">
            	<div class="con" id="tab1">
                	<ul>
                        <p class="regu_text">活期产品</p>
                    	<li>
                        	<dl>
                            	<dt>
                                	<p>活期金<!-- <img src="images/icon32.png"><img src="images/icon33.png"> --></p>
                                	<p><span>灵活买卖</span><b>方便快捷</b></p>
                                    <p><i>2.50</i><time>%</time><u>按天结息 随买随卖</u></p>
                                </dt><!--
                             --><dd>
                                	<p><a href="wxOrderCurrentController.do?toBuyCurrent"><i>买入</i></a></p>
                                </dd>
                            </dl>
                        </li>
                        <p class="regu_text">定期产品</p>
                        
                        <li>
                            <dl>
                                <dt>
                                    <p>保本稳赚金90天</p>
                                    <!-- <p><span>年化收益</span><b>投资期限</b></p> -->
                                    <p><i>6.60</i><time>%</time><u>
                                    新手专享 稳赚不赔
                                    
                                    	</u></p>
                                </dt><!--
                             --><dd>
                                    <p><a href="wxOrderRegularController.do?toBuyRegular&proId=2c9d858151620d5e01516213aac5000b"><i>买入</i></a></p>
                                </dd>
                            </dl>
                        </li>
						
                        <li>
                            <dl>
                                <dt>
                                    <p>新手专享金15天</p>
                                    <!-- <p><span>年化收益</span><b>投资期限</b></p> -->
                                    <p><i>13.80</i><time>%</time><u>
                                    
                                    
                                    	</u></p>
                                </dt><!--
                             --><dd>
                                    <p><a href="wxOrderRegularController.do?toBuyRegular&proId=2c9d8581518f0da101518f1b3a350009"><i>买入</i></a></p>
                                </dd>
                            </dl>
                        </li>
						
                        <li>
                            <dl>
                                <dt>
                                    <p>定期金90天</p>
                                    <!-- <p><span>年化收益</span><b>投资期限</b></p> -->
                                    <p><i>4.80</i><time>%</time><u>
                                    短期投资 快速回报
                                    
                                    	</u></p>
                                </dt><!--
                             --><dd>
                                    <p><a href="wxOrderRegularController.do?toBuyRegular&proId=2c9d858151620d5e015162128a150009"><i>买入</i></a></p>
                                </dd>
                            </dl>
                        </li>
						
                        <li>
                            <dl>
                                <dt>
                                    <p>定期金180天</p>
                                    <!-- <p><span>年化收益</span><b>投资期限</b></p> -->
                                    <p><i>5.80</i><time>%</time><u>
                                    半年投资 收益可观
                                    
                                    	</u></p>
                                </dt><!--
                             --><dd>
                                    <p><a href="wxOrderRegularController.do?toBuyRegular&proId=2c9d858151620d5e015162121e460007"><i>买入</i></a></p>
                                </dd>
                            </dl>
                        </li>
						
                        <li>
                            <dl>
                                <dt>
                                    <p>定期金1年</p>
                                    <!-- <p><span>年化收益</span><b>投资期限</b></p> -->
                                    <p><i>7.00</i><time>%</time><u>
                                    只需一年 收益不错
                                    
                                    	</u></p>
                                </dt><!--
                             --><dd>
                                    <p><a href="wxOrderRegularController.do?toBuyRegular&proId=2c9d8581514cc34d01514cc45d2b0001"><i>买入</i></a></p>
                                </dd>
                            </dl>
                        </li>
						
                        <li>
                            <dl>
                                <dt>
                                    <p>定期金3年</p>
                                    <!-- <p><span>年化收益</span><b>投资期限</b></p> -->
                                    <p><i>11.00</i><time>%</time><u>
                                    定期投资 超高收益
                                    
                                    	</u></p>
                                </dt><!--
                             --><dd>
                                    <p><a href="wxOrderRegularController.do?toBuyRegular&proId=2c9d8581515c5b6e01515c5d16770001"><i>买入</i></a></p>
                                </dd>
                            </dl>
                        </li>
						

                    </ul>
                </div>
                <br><br><br><br>
		    </div>
		    
    <nav>
		<!--底部导航-->
        
		
<nav>
	<ul class="clearfix">
    	<li><a href="/chunjinbao/nav_index" ><i class="n1"></i>首页</a></li>
        <li><a href="/chunjinbao/nav_products" class="active"><i class="n2"></i>淘金</a></li>
        <li><a href="/chunjinbao/nav_gold" ><i class="n3"></i>金库</a></li>
        <li><a href="/chunjinbao/nav_more"  ><i class="n4"></i>我的</a></li>
    </ul>
</nav>

		<!--end底部导航-->
    </nav>
	        
    </section>
    
</body>
</html>