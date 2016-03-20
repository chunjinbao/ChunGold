<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
<title>安全中心</title>
<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet" href="plug-in/wechat/css/public.css">
<link rel="stylesheet" href="plug-in/wechat/css/layer.css">
<script src="plug-in/wechat/js/layer.m.js"></script>
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
<script src="plug-in/html5prompt/js/classie.js"></script>
<script src="plug-in/html5prompt/js/notificationFx.js"></script>
</head>
<body>
	<section class="warp">
    
    	<div class="safety">
        	<ul>
            	<li>
            	    
	               	
	               	<a href="/chunjinbao/bank_authen" id="authuserHrefId">
	                	<span id="authuserId">
	                		  未认证
	                      	<img src="plug-in/wechat/images/icon8.png" width="10">
	                	</span>
	                	<i><img src="plug-in/wechat/images/iconAuthuser.png"></i><em>实名认证</em>
	               	</a>
	               	
              	</li>
                <li>
                     
	                     <a href="#" onclick="showCardMsg();">
	                      <span id="bankCardId">
		                       <span style="margin-right: 12px;">未绑定</span>
	                      </span>
	                      <i><img src="plug-in/wechat/images/iconMyCard.png"></i><em>我的银行卡</em>
	                     </a>
                     
                     
                     
                     
                </li>
            	<li>
                	<a href="wxSafeController.do?mymodifyLoginPassword&type=2">
                	<span>
                	未设置
                       
                	<img src="plug-in/wechat/images/icon8.png" width="10"></span><i>
                	<img src="plug-in/wechat/images/icon30.png"></i>交易密码</a>
                	
                </li>
            	<li>
            		<a href="wxSafeController.do?mymodifyLoginPassword&type=1">
            		<span>修&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;改<img src="plug-in/wechat/images/icon8.png" width="10"></span>
            		<i><img src="plug-in/wechat/images/icon29.png"></i>登录密码</a>
            		
            	</li>
            	<li>
            		<a href="wxSafeController.do?mymodifyLoginPassword&type=3">
            		<span>重&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;设<img src="plug-in/wechat/images/icon8.png" width="10"></span>
            		<i><img src="plug-in/wechat/images/wenhao.png"></i>忘记密码</a>
            	</li>
                
                
            </ul>
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
<script type="text/javascript">
function showAuthuser(){
	
	layer.open({
        content: '已完成实名认证：<br><br>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：<br>身份证号：********<br>',
        btn: ['确 定']
    });
}

function showCardMsg(){
	layer.open({
        content: '请先【实名认证】',
        btn: ['确 定']
    });
}
</script>   
</body>
</html>