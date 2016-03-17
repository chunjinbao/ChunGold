<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String userTel = null;
if (session.getAttribute("curUsrTel")==null){
	
}else{
    userTel = session.getAttribute("curUsrTel").toString();
}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<METAHTTP-EQUIV="Pragma"CONTENT="no-cache">
<METAHTTP-EQUIV="Cache-Control"CONTENT="no-cache">
<METAHTTP-EQUIV="Expires"CONTENT="0">
<title>我的</title>
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
<script src="plug-in/html5prompt/js/classie.js"></script>
<script src="plug-in/html5prompt/js/notificationFx.js"></script>
<script src="plug-in/ajaxfileupload/ajaxfileupload.js"></script>

</head>
<script type="text/javascript">
function cancle(){
	//返回个人中心 
	window.location.href = "/chunjinbao/nav_more";
}

</script>

<body>
	<section class="warp">
    	<div class="edit_information">
            <form id="form1" name="form1" method="post">
            <input type="hidden" id="mobileId"   value="15521096419" name="mobile" readonly="readonly">
                <ul>
                    <li> <a href="/chunjinbao/moreMyInfoEditor" ><span style="color:#acacac ;font-size:14px;margin-right: 10px;">点击修改</span> </a>
                    	<img id="avatarId"
                    	
                    	 src="plug-in/wechat/images/pic2.jpg" 
                    	width="60" height="60">
                    <!-- 	<input type="file" onchange = "asas()" accept="image/*;capture=camera"  id="file"  name="file"> -->
                    	</li>
                    <li><b>账号</b><span style="margin-right: 10px;font-size: 14px;"><%= userTel %></span>
                    <input name="headImg" id="headImg" type="hidden" value="" />
                    </li>
                    <li><b>用户名</b><input type="text" id="realName" value="" name="realName"  readonly="readonly"></li>
                    <li><b>电子邮箱</b><input type="email" id="email" value="" name="email" readonly="readonly"></li>
                    <li><b>性别</b>
                    				 	
                    				 	
                    				 	
                    				 		<input type="text" name="sex"  value="--"  id="sex" readonly="readonly">
                    				 	
                    			  
                     </li>
                    <li><b>出生日期</b><input type="text" name="birthDate"  style="background: none;" value=""   id="birthDate" readonly="readonly"> </li>
                    <li>
                    </li>
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