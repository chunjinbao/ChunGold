<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

String curUsrTel=null;
if (session.getAttribute("curUsrTel")!=null){
	curUsrTel = session.getAttribute("curUsrTel").toString();
}
%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<METAHTTP-EQUIV="Pragma"CONTENT="no-cache">
<METAHTTP-EQUIV="Cache-Control"CONTENT="no-cache">
<METAHTTP-EQUIV="Expires"CONTENT="0">
<title>个人中心</title>
<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="plug-in/wechat/css/public.css">
<script src="plug-in/wechat/js/jquery.min.js"></script>

</head>
<body style="overflow-y: hidden;overflow-x: hidden;">
	<section class="warp">
    	<div class="vip_center_hd" style="margin-bottom: 12px;">
        	<a href="/chunjinbao/user_userDetail">
        		<span><img src="plug-in/wechat/images/icon8.png" width="10"></span>
                <dl>
                	<dt><img 
                    	 src="plug-in/wechat/images/pic2.jpg" ></dt>
                	<dt id="nameId" style="font-size: 18px; margin-left: 10px;">
                	  登录/注册
                	</dt>
                </dl>
            </a>
        </div>
        <div class="more">
            <ul>
                
                
                <!-- 
                <li><a href="#"><span><img src="plug-in/wechat/images/icon8.png" width="10"></span><i><img src="plug-in/wechat/images/icon11.png"></i>&nbsp;<em>存金</em></a></li>
                 -->
                 
                <li><a href="wxMoreCenterController.do?myMessage"><span><img src="plug-in/wechat/images/icon8.png" width="10"></span><i><img src="plug-in/wechat/images/iconMyMessage.png"></i>&nbsp;<em>我的消息</em></a></li>
                <!--
                <li><a href="javascript:void(0);" onclick="hasMyMessage();"><span><img src="plug-in/wechat/images/icon8.png" width="10"></span><i><img src="plug-in/wechat/images/iconMyMessage.png"></i>&nbsp;<em>我的消息</em></a></li>
                -->
                
                <li>
	               <a href="/chunjinbao/user_share">
	                  <span id="inviteCodeId" style="line-height: 30px;"><img src="plug-in/wechat/images/icon8.png" width="10"></span>
	                  <i><img src="plug-in/wechat/images/icon9.png"></i>&nbsp;<em>我的分享</em>
	               </a>
                </li>
                
                
                <li><a href="wxOnlineGoldController.do?getExpressAddress"><span><img src="plug-in/wechat/images/icon8.png" width="10"></span><i><img src="plug-in/wechat/images/iconAddr.png"></i>&nbsp;<em>收货地址</em></a></li>
                <li><a href="/chunjinbao/user_securityCenter"><span><img src="plug-in/wechat/images/icon8.png" width="10"></span><i><img src="plug-in/wechat/images/iconSafe.png"></i>&nbsp;<em>安全中心</em></a></li>
            
            	<!--
            	<li><a href="wxMoreCenterController.do?moreMy"><span><img src="plug-in/wechat/images/icon8.png" width="10"></span><i><img src="plug-in/wechat/images/icon9.png"></i>&nbsp;<em>我的</em></a></li>
                -->
                
                <li><a href="wxMoreController.do?askAnswer"><span><img src="plug-in/wechat/images/icon8.png" width="10"></span><i><img src="plug-in/wechat/images/icon12.png"></i>&nbsp;<em>理财问答</em></a></li>
                <li><a href="wxMoreController.do?aboutUs"><span><img src="plug-in/wechat/images/icon8.png" width="10"></span><i><img src="plug-in/wechat/images/icon13.png"></i>&nbsp;<em>关于我们</em></a></li>
                <div id="logou" class="login_out"><a href="javascript:comLoginOut();">退出登录</a></div>
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
var curUsrTel=<%=curUsrTel%>;

$(function (){
	if(curUsrTel!=null)
		$("#nameId").html(curUsrTel);
	else{
		$("#logou").hide();
	}
});

//退出登录
function comLoginOut(){
	
	if(window.confirm("您确定要退出？")){
		sessionLogout();
	}
}
function sessionLogout(){
	
	$.ajax({
		url:'/chunjinbao/login_logout',
		type:"post",
		dataType:"text",
		success:function(result){
			if(result=="ok"){
				if(result.url!=""){
					
					window.location.href = '/chunjinbao/index.jsp';
					return;
				}
			}else{
				alert(result.msg);
			}
		},
		error:function(){
 			megs('网络异常');
		}
	});
}	
</script>
</body>
</html>