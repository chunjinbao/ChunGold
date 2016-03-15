<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
                        <s:iterator id="product_list" value="productList">
                        <li>
                            <dl>
                                <dt>
                                    <p><s:property value="productName"/></p>
                                    <!-- <p><span>年化收益</span><b>投资期限</b></p> -->
                                    <p><i><s:property value="productProfit"/></i><time>%</time><u>
                                    <s:property value="productDetail"/>
                                    
                                    	</u></p>
                                </dt><!--
                             --><dd>
                                    <p><a href="toButCurrent.jsp?productId=<s:property value='productId'/>"><i>买入</i></a></p>
                                </dd>
                            </dl>
                        </li>
						</s:iterator>
						
                        
						

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