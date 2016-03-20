<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>







<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<METAHTTP-EQUIV ="Pragma"CONTENT="no-cache"> <METAHTTP-EQUIV
	="Cache-Control"CONTENT="no-cache"> <METAHTTP-EQUIV
	="Expires"CONTENT="0">
<title>绑定银行卡</title>
<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="plug-in/wechat/css/layer.css">
<link rel="stylesheet" href="plug-in/wechat/css/public.css">
<link rel="stylesheet" href="plug-in/wechat/css/animation.css">
<script src="plug-in/wechat/js/jquery.min.js"></script>
<script src="plug-in/wechat/js/layer.m.js"></script>
</head>

<body onload="toLoadTitle()">
	<div class="gray" style="display: none;"></div>
    <div class="loader" style="display: none;">
        <div class="loading-3">
            <i></i>
            <i></i>
            <i></i>
            <i></i>
            <i></i>
            <i></i>
            <i></i>
            <i></i>
        </div>
    </div>
    
	<section class="warp">

		<div class="recharge">
			<form id="payForm" name="payForm" action="<s:url action='bank_turnPay'/>" method="post">
				<p>请绑定银行卡继续完成实名认证</p>
				
				<p>
					<input name="cardname" id="cardname" type="text" placeholder="请输入真实姓名">
				</p>
				<p>
					<input name="idcard" id="idcard" type="text" placeholder="请输入身份证号">
				</p>
				<p>
					<input name="bankcardnum" id="bankcardnum" type="text" placeholder="请输入银行卡号">
				</p>
				<p>
					<input name="amount" id="amount" type="text" placeholder="请输入金额">
				</p>
				
				<p>需支付1元以上完成绑卡流程，支付金额将转入您的钱包</p>
				
				<p>
					<a href="javascript:submitFrom();">下一步</a>
				</p>
				<p>为了保障您的账户安全，请务必确认填写的个人信息（姓名、手机号、银行卡号）真实有效。</p>
                
			</form>
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
<script type="text/javascript">
function toLoadTitle(){

    $("#amount").focus();
}
function submitFrom(){
	var cardname = $("#cardname").val();          //请输入真实姓名
	var idcard = $("#idcard").val();              //请输入身份证号
	var bankcardnum = $("#bankcardnum").val();    //请输入银行卡号
	
	if(cardname==null||cardname==""||cardname.length<2){
		alert("请输入正确的真实姓名");
        return;
	}
	if(idcard==null||idcard==""||idcard.length<15){
		 alert("请输入正确的身份证号码");
       return;
	}
	
	
	//银行卡号
	$.ajax({
		url:"/chunjinbao/bank_validateCardId",
		type:"post",
		data:{'idcard':idcard},
		dataType:"text",
		success:function(result){
			
			if(result != "ok"){   
				alert(result);
			}else{
				if(bankcardnum==null||bankcardnum==""||bankcardnum.length<15){
				   alert("请输入正确的银行卡号");
			       return;
				}
				
				
				
				var val1=$("#amount").val();
				var payPwd=$("#payPwd").val();
				
			    if(val1 == null || val1 == "" || isNaN(val1)){
			        alert("请输入正确的充值金额");
			        return;
			    }
			    
			    if(val1<1){
			        alert("单笔充值金额不能小于1元");
			        return;
			    }
			    
			    if(val1>50000){
			        alert("请输入不大于50000的金额");
			        return;
			    }
			    
			    $(".gray").show();//这是显示
			    $(".loader").show();//这是显示
			    
			    $("#payForm").submit();
			}
		},
		error:function(){
			alert("网络请求错误,请稍后再试");
		}
   });
	
}
</script>
</body>
</html>