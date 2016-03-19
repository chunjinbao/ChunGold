<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
<title>设置密码</title>
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
                	<li><input id="" name="user.tel" type="hidden" value="<s:property value="user.tel"/>"><input id="psw" name="user.password" type="password" placeholder="请输入登录密码"></li>
                	<li><input type="hidden"></li>
                    <li><input id="repsw" name="repsw" type="password" placeholder="请确认登陆密码"></li>
                    <li><a>密码是由6-16位字符组成，同时区分大小写</a></li>
                    <li><input id="invitecode" name="user.useShareId" type="text" placeholder="请输入邀请码（可选）"></li>
                    
                    <li><a href="javascript:submitFrom();">注册</a></li>
                </ul>
            </form>
            
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

		<!--end底部导航-->
      </nav>
    </section>
    		<script src="plug-in/html5prompt/js/classie.js"></script>
		<script src="plug-in/html5prompt/js/notificationFx.js"></script>
		<script>

		//提交表单
		function submitFrom()
		{
			
			var sub = true;
			var tem = true;
			var pwd = document.getElementById('psw').value;
			if(pwd.length>16 || pwd.length<6){
				$("#psw").focus();
				alert("密码长度不符合要求");
				sub = false;
				tem = false;
			}
            // 需要进行一部ajax验证
			if(tem && $("#psw").val() != $("#repsw").val()){
				$("#repsw").focus();
				alert("两次输入的密码不一致");
				sub = false;
			}


			if(sub){
				$("#form").submit();
			}	
			
		}
		
		
		
		</script>
</body>
</html>