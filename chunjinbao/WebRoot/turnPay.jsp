<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<METAHTTP-EQUIV="Pragma"CONTENT="no-cache">
<METAHTTP-EQUIV="Cache-Control"CONTENT="no-cache">
<METAHTTP-EQUIV="Expires"CONTENT="0">
<title>准备付钱</title>
<METAHTTP-EQUIV="Pragma"CONTENT="no-cache">
<METAHTTP-EQUIV="Cache-Control"CONTENT="no-cache">
<METAHTTP-EQUIV="Expires"CONTENT="0">
<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="plug-in/wechat/css/public.css">
<script src="plug-in/wechat/js/jquery.min.js"></script>
<!-- html5提示插件 -->
<link rel="stylesheet" type="text/css" href="plug-in/html5prompt/css/demo.css" />
<link rel="stylesheet" type="text/css" href="plug-in/html5prompt/css/ns-default.css" />
<link rel="stylesheet" type="text/css" href="plug-in/html5prompt/css/ns-style-bar.css" />
<script src="plug-in/html5prompt/js/modernizr.custom.js"></script>
<script src="plug-in/html5prompt/js/promptBox.js"></script>
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

</head>

<body>
	<section class="warp">
    
        <div class="reg">
        	<div class="logo"><img src="plug-in/wechat/images/logo.png" alt=""></div>
        	<a style="align: Center"><h1>连接易支付。。。。。</h1></a>
            
        </div>
	
        
       <nav>
		<!--底部导航-->
        
		
<nav>
	<ul class="clearfix">
    	<li><a href="/chunjinbao/nav_index" ><i class="n1"></i>首页</a></li>
        <li><a href="/chunjinbao/nav_products" ><i class="n2"></i>淘金</a></li>
        <li><a href="/chunjinbao/nav_gold" ><i class="n3"></i>金库</a></li>
        <li><a href="/chunjinbao/nav_more"  class="active"><i class="n4"></i>我的</a></li>
    </ul>
</nav>