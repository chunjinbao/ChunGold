<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib uri="/struts-tags" prefix="s"%>
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
<title>实名认证</title>
<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet" href="plug-in/wechat/css/public.css">
<script src="plug-in/wechat/js/jquery.min.js"></script>
<script src="plug-in/wechat/js/layer.m.js"></script>
<script src="plug-in/wechat/js/common/common.js"></script>

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



<script>
var url ="";
function save(){
    var payPwd=$('#payPwd').val();             //真实姓名
    var rePayPwd=$('#rePayPwd').val();         //身份证号码
    if(payPwd==""){
    	alert('交易密码不能为空！');
    	return;
    }
    if(rePayPwd==""){
    	alert('确认交易密码不能为空！');
    	return;
    }
    if(payPwd!=rePayPwd){
    	alert('两个密码不一致！');
    	return;
    }
    if(payPwd.length!=6){
    	alert('请输入6位交易密码！');
    	return;
    }
    
    $("#form").submit();
}
	
</script>

</head>
<body>
	<section class="warp">
    	<div class="authenticate">
    	    <form id="form" action="<s:url action='bank_tradePsw'/>" method="post">
        	<ul>
        	    <input type="hidden" name="url" value=""/>
        	    <li>实名认证</li>
       	    	<li><input id="payPwd" name="user.tradePsw" type="password" placeholder="交易密码" value="" ></li>
       	    	<li><input id="rePayPwd" name="rePayPwd" type="password" placeholder="确认交易密码" value="" ></li>
                <li><a href="javascript:void(0);" onclick="save();">下一步</a></li>
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
    
</body>
</html>
