<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>








<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<METAHTTP-EQUIV="Pragma"CONTENT="no-cache">
<METAHTTP-EQUIV="Cache-Control"CONTENT="no-cache">
<METAHTTP-EQUIV="Expires"CONTENT="0">
<title>购金宝</title>
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
</head>
<body>
	<section class="warp">
        <div class="login">
        	<div class="logo"><img src="plug-in/wechat/images/logo.png" alt=""></div>
        	<form name="form" id="form" action="wxLoginController.do?goLogin" method="post">
            	<ul>
                	<li><input name="userName" id="userName" type="tel" value="" placeholder="请输入手机号"></li>
                    <li><input name="password" id="password" type="password" placeholder="请输入密码"></li>
                    <li><a href="javascript:submitFrom();">登 录</a></li>
                    <li><a href="wxLoginController.do?reg"><span>注册新用户</span></a></li>
                    <li><a href="wxSafeController.do?mymodifyLoginPassword&type=3" class="fr">忘记密码？</a></li>
                </ul>
            </form>
        </div>
	<nav>
		<!--底部导航-->
        
		
<nav>
	<ul class="clearfix">
    	<li><a href="wxMainController.do?index" ><i class="n1"></i>首页</a></li>
        <li><a href="wxMainController.do?products" ><i class="n2"></i>淘金</a></li>
        <li><a href="wxMainController.do?gold" ><i class="n3"></i>金库</a></li>
        <li><a href="wxMainController.do?more"  class="active"><i class="n4"></i>我的</a></li>
    </ul>
</nav>

		<!--end底部导航-->
    </nav>
    </section>
    <script src="plug-in/html5prompt/js/classie.js"></script>
	<script src="plug-in/html5prompt/js/notificationFx.js"></script>
	<script>
	
	var msg="";
	
	//手机号码正则
	var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/; 

	if(msg)
		{
		megs("");
		}
	
	
	function submitFrom()
	{
		var sub = true;
		
		if(!myreg.test($("#userName").val())){
			//提示
			megs("您的手机格式不对，请检查你的手机！");
			
			sub = false;
		}
		
		if($("#userName").val() == ""){
			megs("用户不能为空!");
			
			sub = false;
		}
		
		if($("#password").val() == ""){
			megs("密码不能为空!");
			
			sub = false;
		}
		
		if(sub){
			$("#form").submit();
		}
		
		
	}
	</script>
</body>
</html>
