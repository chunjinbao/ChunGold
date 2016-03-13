<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
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
<title>新用户注册</title>
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
        	<form id="form" action="<s:url action='login_register'/>" method="post">
            	<ul>
                	<li><input id="userName" name="user.tel" type="tel" placeholder="请输入手机号码"></li>
                    <li><input name="codeNum" id="codeNum" type="tel" placeholder="请输入验证码">
                    <button type="button" id="btnSendCode"   onclick="sendMessage()">获取验证码</button></li>
                    <li><input name="agree" type="checkbox" value="1" id="agree" class="check" checked="checked"><label for="agree"><em>已阅读并同意<a href="wxHelpController.do?agreement">《购金宝服务协议》</a></em></label>
                    <input name="time" id="time" type="hidden" value="1">
                    </li>
                    <li><a href="javascript:submitFrom();">下一步</a></li>
                </ul>
            </form>
            
        </div>
		<ul>
              <li><a href="wxLoginController.do?login"><span style="font-size: 14px;float: right;margin-right: 15px;">已有账号？直接登录</span></a></li>
        </ul>
        
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

		<!--end底部导航-->
      </nav>
    </section>
    		<script src="plug-in/html5prompt/js/classie.js"></script>
		<script src="plug-in/html5prompt/js/notificationFx.js"></script>
		<script>
		var Message="";
		if(Message != ""){
			megs(Message);
		}
		var InterValObj; //timer变量，控制时间
		var count = 120; //间隔函数，1秒执行
		var curCount;//当前剩余秒数
        var phoneNum="";//手机号码
		//手机号码正则
		var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/; 
		function sendMessage() {
			if(!myreg.test($("#userName").val())){
				//提示
				megs("您的手机格式不对，请检查你的手机！");
			}else{
				this.sendMessagesTrim();
				 //AJAX返回随机数验证码
				 $.getJSON("wxLoginController.do?msm&userName="+$("#userName").val(),function(result){
					 
					 if(result)
						 {
					
						 if(result.msg)
						{
							 
							 
							 megs(result.msg);
							 endf();
							 
						}
						 else
							 {
							 phoneNum = result.phoneNum;
							 }
						 
						 
						 
						 }
					 
				 });
			}
		}
		function endf()
		{
			
			curCount == 0;
			$("#time").val(1);
			window.clearInterval(InterValObj);//停止计时器
			$("#btnSendCode").removeAttr("disabled");//启用按钮
			$("#btnSendCode").text("重新发送验证码");
		}
		
		//timer处理函数
		function SetRemainTime() {
			if (curCount == 0) {
				$("#time").val(1);
				window.clearInterval(InterValObj);//停止计时器
				$("#btnSendCode").removeAttr("disabled");//启用按钮
				$("#btnSendCode").text("重新发送验证码");
			}
			else {
				curCount--;
				$("#btnSendCode").text(curCount + "s后重新获取");
				
			}
		}
		
		//
		function sendMessagesTrim() {
		curCount = count;
		//设置button效果，开始计时
	     $("#time").val(2);
		 $("#btnSendCode").attr("disabled", "disabled");
		 $("#btnSendCode").text(+ curCount + "S后重新获取");
		 InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
	    }
		
		//提交表单
		function submitFrom()
		{
			
			var sub = true;
			
			//验证码判断是否为空
// 			if($("#codeNum").val() == ""){
				
// 				$("#codeNum").focus();
				
// 				alert("验证码不能为空!");
				
// 				sub = false;
				
// 			}
			//手机判断
			if(!myreg.test($("#userName").val())){
				$("#userName").focus();
				alert("手机格式不对!");
				sub = false;
			}
			//判断验证码时间是否过期
			
			
			
// 			if($("#time").val() == 1){
// 				alert("你的验证码以过期!");
// 				sub = false;
				
// 			}
			
			//判断是否同意协议

			
			if($("#agree").attr("checked") != "checked"){
				alert("请选择购金宝协议!");
				sub = false;
			}
			
			//判断提交时候的手机与获取验证码的手机是否一致
// 			if(phoneNum != $("#userName").val()){
				
// 				alert("收到验证手机与注册手机不一致!");
// 				sub = false;
				
// 			}
			
			
			if(sub){
				$("#form").submit();
			}	
			
		}
		
		
		
		</script>
</body>
</html>