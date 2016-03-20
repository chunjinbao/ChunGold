<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String shareCode = null;
if (session.getAttribute("curUsrTel")==null){
	
}else{
	shareCode = session.getAttribute("shareId").toString();
}

%>








<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<METAHTTP-EQUIV="Pragma"CONTENT="no-cache">
<METAHTTP-EQUIV="Cache-Control"CONTENT="no-cache">
<METAHTTP-EQUIV="Expires"CONTENT="0">
<title>我的分享</title>
<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">

<link rel="stylesheet" href="plug-in/wechat/css/public.css">
<script src="plug-in/wechat/js/jquery.min.js"></script>
<script type="text/javascript" src="plug-in/wechat/js/jquery.qrcode.min.js"></script> 
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<style>
	body{ background:#e9351e;}
</style>
<script>
/*
 $(function(){
	$("#code").qrcode({ 
	    render: "table", //table方式 
	    width: 200, //宽度 
	    height:200, //高度 
	    text: "http://www.goujinbao.com/jeebao/gjb.do?wx" //任意内容 
	});
}) 
*/
//微信
 var appid = 'wx954c2efb115a7f46';
 var trim = '1458202541';
 var nonce_str = '2eff2cec-8e7d-41cf-b235-dfaefdfb7828';
 var hexstr = '1ab646b45f248161bd2201c32af152519c33415c';
 var recommended = '096419';
 

 var urls = "http://www.goujinbao.com/wxLoginController.do?reg&recommended="+recommended ;
 
 var urlss = "http://www.goujinbao.com";

 var titles="购金宝，会赚钱的黄金！ ";
 var content="买黄金，上购金宝，零差价。 存黄金，上购金宝，赚收益。 现在推荐注册还送20元购金券！"
 var imgUrls=urlss+"/plug-in/wechat/images/300.jpg";
 wx.config({
	    debug: false,
	    appId: appid,
	    timestamp: trim,
	    nonceStr: nonce_str,
	    signature: hexstr,
	    jsApiList: ['checkJsApi',  //判断当前客户端版本是否支持指定JS接口
	                'onMenuShareTimeline', //分享给好友
	                'onMenuShareAppMessage', //分享到朋友圈
	                'onMenuShareQQ',  //分享到QQ
	                'onMenuShareWeibo' //分享到微博
	                ]
	});
 
 wx.ready(function () {
	 //获取“分享到朋友圈”按钮点击状态及自定义分享内容接口
	 wx.onMenuShareTimeline({
		    title: titles, // 分享标题
		    link: urls, // 分享链接
		    imgUrl: imgUrls, // 分享图标
		    success: function () { 
		        // 用户确认分享后执行的回调函数
		    },
		    cancel: function () { 
		        // 用户取消分享后执行的回调函数
		    }
		});
	 //获取“分享给朋友”按钮点击状态及自定义分享内容接口
	 wx.onMenuShareAppMessage({
		    title:titles, // 分享标题
		    desc: content, // 分享描述
		    link: urls, // 分享链接
		    imgUrl: imgUrls, // 分享图标
		    type: '', // 分享类型,music、video或link，不填默认为link
		    dataUrl: '', // 如果type是music或video，则要提供数据链接，默认为空
		    success: function () { 
		        // 用户确认分享后执行的回调函数
		    },
		    cancel: function () { 
		        // 用户取消分享后执行的回调函数
		    }
		});
	 //获取“分享到QQ”按钮点击状态及自定义分享内容接口
	 wx.onMenuShareQQ({
		    title: titles, // 分享标题
		    desc: content, // 分享描述
		    link:  urls, // 分享链接
		    imgUrl: imgUrls, // 分享图标
		    success: function () { 
		       // 用户确认分享后执行的回调函数
		    },
		    cancel: function () { 
		       // 用户取消分享后执行的回调函数
		    }
		});
	 //获取“分享到腾讯微博”按钮点击状态及自定义分享内容接口
	 wx.onMenuShareWeibo({
		    title: titles, // 分享标题
		    desc: content, // 分享描述
		    link: urls, // 分享链接
		    imgUrl: imgUrls, // 分享图标
		    success: function () { 
		       // 用户确认分享后执行的回调函数
		    },
		    cancel: function () { 
		        // 用户取消分享后执行的回调函数
		    }
		});
 });
</script>
</head>
<body>
	<section class="warp">
        <div class="share">
        	<div class="share_hd">
            	<div class="share_code" style="position: relative; height: 240px;">
                	<div style="position: absolute; width:200px; left: 50%; margin-left:-100px; " id="code">
                	<img src="plug-in/wechat/images/erweima.jpg" width="200px">
                	</div>
                	<!-- <p style="display: inline-block; margin-top: 220px;" ><span>扫我后关注注册，立送30克特权黄金</span></p> -->
                </div>
                
                <p>我的邀请码：<span><%=shareCode %></span></p>
                
                <p>点击右上角，分享给更多朋友，有惊喜哟</p>
            </div>
            <div class="share_bd">
            	<p><img src="plug-in/wechat/images/pic17.png" width="100%"></p>
                <div class="share_bd_bg">
                    <h2><span>我的奖励</span></h2>
                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                       
                        <tr>
                           
				            <td>奖 励</td>
                            <td>日 期</td>
					
				
                         
                        </tr>
                        <s:iterator id="share" value="userList">
                        <tr>
                          
                              <td>  20 元</td>
                              <td> <s:property value="regTime"/></td>
                          
                        </tr>
                         </s:iterator> 
                      
                    </table>
                </div>
            </div>
        </div>
       <div style="height: 40px;"></div>
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