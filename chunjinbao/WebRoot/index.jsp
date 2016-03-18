
<%@page import="Util.GetGoldPrice"%>
<%@page import="entity.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String userName = null;
String userTel =  null;
if (session.getAttribute("curUsrTel")==null){
	
}else{
    userName = session.getAttribute("userName").toString();
	userTel = session.getAttribute("curUsrTel").toString();
}
	
%>
<!DOCTYPE html>
<html manifest="aa.appcache">
<head>
<div id='wx_pic' style='margin:0 auto;display:none;'>
	<img src='http://www.goujinbao.com/jeecg/plug-in/wechat/images/pic300.jpg' />
</div>
<meta charset="utf-8">
<title>纯金宝</title>
<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="plug-in/wechat/css/public.css">
<script type="text/javascript" src="plug-in/wechat/js/jquery.min.js"></script>
<script type="text/javascript" src="plug-in/wechat/js/TouchSlide.1.1.js"></script>
<style type="text/css">    
.banner{ width:100%;}
.focus{ width:100%; margin:0 auto; position:relative; overflow:hidden; }
.focus .hd{ width:100%; height:20px;  position:absolute; z-index:1; bottom:2px; text-align:center;  }
.focus .hd ul{ overflow:hidden; text-align:center; height:20px; }
.focus .hd ul li{ display:inline-block; width:8px; height:8px; margin:0 2px ;background:#fff; border-radius:50%;opacity: 0.8;}
.focus .hd ul .on{ background: url(plug-in/wechat/images/01.png) no-repeat center center; background-size: contain;width: 14px; height: 14px;margin-bottom: -3px;}
.focus .bd{ position:relative; z-index:0; }
.focus .bd li img{ width:100%; }
</style>

<script type="text/javascript">
		$(function(){
			setGoldPrice();
			setInterval("setGoldPrice()",3000);
		}); 
		
		function setGoldPrice(){
			$.ajax({
			    type:"POST",
			    url:"/chunjinbao/util_rtGoldPrice",
			    dataType:"text",
			    success:function(result){$("#goldPrice").html(result);},
			    error:function(msg){}
			});
		}
	</script>
</head>
<body>
<div style='margin:0 auto;width:0px;height:0px;overflow:hidden;'>
 	<img src="plug-in/wechat/images/300.jpg" width='350'>
</div>
	<section class="warp">    
        <div class="home">
            
            <!-- banner -->
            <div class="banner">
                    <div id="focus" class="focus">
                        <div class="hd">
                            <ul><li class=""></li><li class="on"></li><li class=""></li><li class=""></li></ul>
                        </div>
                        <div class="bd">
                            <div class="tempWrap" style="overflow:hidden; position:relative;">
                                <ul style="width: 1875px; position: relative; overflow: hidden; padding: 0px; margin: 0px; transition-duration: 400ms; -webkit-transition-duration: 400ms; -webkit-transform: translate(-750px, 0px) translateZ(0px);">
                                  <li style="display: table-cell; vertical-align: top; width: 375px;"><a href="/chunjinbao/pic_firstPic"><img src="plug-in/wechat/images/pic6_100.jpg"></a></li>                                                                  
                                  <li style="display: table-cell; vertical-align: top; width: 375px;"><a href="/chunjinbao/pic_secondPic" ><img src="plug-in/wechat/images/pic6_1.jpg"></a></li>                                  
                                  <li style="display: table-cell; vertical-align: top; width: 375px;"><a href="#"><img src="plug-in/wechat/images/pic6_13.jpg"></a></li>
                                  <li style="display: table-cell; vertical-align: top; width: 375px;"><a href="/chunjinbao/pic_thirdPic"><img src="plug-in/wechat/images/pic6_22.jpg"></a></li>
                                  <li style="display: table-cell; vertical-align: top; width: 375px;"><a href="/chunjinbao/pic_fourPic"><img src="plug-in/wechat/images/pic6_6.jpg"></a></li>                               
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        TouchSlide({ 
                            slideCell:"#focus",
                            titCell:".hd ul", 
                            mainCell:".bd ul", 
                            effect:"leftLoop", 
                            autoPlay:true,
                            autoPage:true 
                        });
                        $('.focus .hd ul li').html('')
                    </script>
                    <!-- è½®æ­ End -->
            </div>
        <ul>
            <li class="home_group_1">
                <ul>
                    <li><a href="/chunjinbao/login_register"><img src="plug-in/wechat/images/pic10.png" alt=""><span>新手专享</span><b>30克特权黄金</b></a></li>
                    <li><a href="/chunjinbao/user_share"><img src="plug-in/wechat/images/pic11.png" alt=""><span style="color:#ff7e3a;">邀请好友</span><b>成功邀请送现金</b></a></li>
                </ul>  
            </li>
			<li class="home_group_2">
                <span>实时金价</span><img src="plug-in/wechat/images/pic12.png" alt="" class="img_01" />
                <div><a href="/chunjinbao/price_price">	<b id="goldPrice">
                </b><i>元/克</i></a></div><a href="/chunjinbao/nav_products"><img src="plug-in/wechat/images/pic13.png" alt="" class="img_02" /></a>
                <a href="/chunjinbao/nav_gold"><time class="time1">昨日收益</time><u class="u1">0.00元</u></a>
                <a href="/chunjinbao/gold_mygold"><time class="time2">我的金库</time><u class="u2">0.0000元</u></a>
            </li>
            <li class="home_group_3">
                <ul>
                    <a href="/chunjinbao/nav_products">
                    <li class="li_l">
                        <img src="plug-in/wechat/images/pic14.png" alt=""><span>随买随卖，灵活投资</span><b class="first">2.50%</b>
                        <!-- <ol>
                            <li class="home_text">2</li>
                            <li class="home_text">.</li>
                            <li class="home_text">9</li>
                            <li class="home_text">9</li>
                        </ol> -->
                        <!-- <i>%</i> -->
                    </a>
                    </li>
                     <a href="/chunjinbao/nav_products">
                    <li class="li_r">
                        <img src="plug-in/wechat/images/pic15.png" alt=""><span>定期理财，更高收益</span><b>11.00%</b>
                       <!--  <ol>
                            <li class="home_text">9</li>
                            <li class="home_text">.</li>
                            <li class="home_text">9</li>
                            <li class="home_text">9</li>
                        </ol> -->
                        <!-- <i>%</i> -->
                    </li>
                    </a>
                </ul>
            </li>
			<div style="width:85%;margin-bottom:20px;"><img style="margin-top:-4px;" src="plug-in/wechat/images/safe.png" alt="">

			<p style="font-size: 15px;">当前登录用户：<%= userTel%></p>
			</div>
			<br><br><br><br>
        </ul>
    <nav>
        
		
<nav>
	<ul class="clearfix">
    	<li><a href="/chunjinbao/nav_index" class="active"><i class="n1"></i>首页</a></li>
        <li><a href="/chunjinbao/nav_products" ><i class="n2"></i>淘金</a></li>
        <li><a href="/chunjinbao/nav_gold" ><i class="n3"></i>金库</a></li>
        <li><a href="/chunjinbao/nav_more"  ><i class="n4"></i>我的</a></li>
    </ul>
</nav>

		
    </nav>
		
    </section>
</body>
</html>