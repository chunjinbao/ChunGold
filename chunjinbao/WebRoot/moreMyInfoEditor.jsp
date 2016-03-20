<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<script src="plug-in/sliding/js/jquery-1.7.1.min.js"></script>
<!-- <script src="plug-in/weixin/js/jquery-form.js"></script> -->
<!-- html5提示插件 -->
<link rel="stylesheet" type="text/css" href="plug-in/html5prompt/css/demo.css" />
<link rel="stylesheet" type="text/css" href="plug-in/html5prompt/css/ns-default.css" />
<link rel="stylesheet" type="text/css" href="plug-in/html5prompt/css/ns-style-bar.css" />
<script src="plug-in/html5prompt/js/modernizr.custom.js"></script>
<script src="plug-in/html5prompt/js/promptBox.js"></script>
<script src="plug-in/html5prompt/js/classie.js"></script>
<script src="plug-in/html5prompt/js/notificationFx.js"></script>
<!--
<script src="plug-in/ajaxfileupload/ajaxfileupload.js"></script> -->
<script type = "text/javascript" >
		function cancle(){
			//返回个人中心 
			window.location.href = "wxMainController.do?more";
		}
	    function ProcessFile( e ) {
		var file = document.getElementById('file').files[0];
		var point = file.name.lastIndexOf(".");
	    var type = file.name.substr(point)
		//两兆 = 2097152字节  2048千字节
		//三兆= 3145728字节 3072千字节
		if(file.size > 3145728){ //大于两兆 
			alert("图片不能超过3M,请重新选择");
			return;
		}
		if (file){
				 if(type == ".jpg" || type == ".gif" || type == ".png" || type == ".bmp"){
					var reader = new FileReader();
						reader.onload = function ( event ) {
							var txt = event.target.result;
							var img = document.createElement("img");
							img.src = txt;
							$("#avatarId").attr("src",img.src);
						};
				 }else{
					  alert("图片格式不对,请重新选择");
					  return;
				 }
		  }
			  reader.readAsDataURL( file );
		}
		 
		function contentLoaded() {
				document.getElementById('file').addEventListener( 'change' ,
				ProcessFile , false );
		}
		window.addEventListener( "DOMContentLoaded" , contentLoaded , false );
    </script>
  
</head>
<body>
	<section class="warp">
    	<div class="edit_information">
            <form id="form1" action="<s:url action='user_moreMyInfoEdit'/>" name="form1" method="post" enctype="multipart/form-data">
            	<input type="hidden" id="mobileId" value="" name="mobile" readonly="readonly">
                <ul>
                    <li><span style="color:#acacac ;font-size:14px">更改头像</span>
	                    <s:if test="%{user.headPortrait == null}">
	                    	<img id="avatarId" 
	                    	 src="plug-in/wechat/images/icon7_01.png" 
	                    	width="60" height="60">
						</s:if>
						<s:else>
	                    	 <img id="avatarId" 
	                    	 src="${pageContext.request.contextPath}/headPortraits/<s:property value="user.headPortrait"/>" 
	                    		width="60" height="60">
	                    </s:else>
                    	<input type="file"  accept="image/gif,image/png,image/jpeg" id="file" name="upload">
						<div id = "result"> </div>
                    <!-- 	<input type="file" onchange = "asas()" accept="image/*;capture=camera"  id="file"  name="file"> -->
                    	</li>
                    </li>
                    <li><b>账号</b><span style="margin-right: 10px;font-size: 14px;" name="userTel"><s:property value="user.tel"/></span>
                    <input name="user.headPortrait" id="headImg" type="hidden" value="<s:property value="user.headPortrait"/>" />
                    <input name="my_birthDate" value="" type="hidden" id="my_birthDate">
                    <input name="user.userId" id="userId" type="hidden" value="<s:property value="user.userId"/>" />
                    </li>
                    <li><b>用户名</b><input type="text" id="realName" value="<s:property value="user.userName"/>" name="user.userName" placeholder="昵称"></li>
                    <li><b>电子邮箱</b><input type="email" id="email" value="<s:property value="user.email"/>" name="user.email" placeholder="电子邮箱"></li>
                    <li><b>性别</b><s:select name="user.sex" list="#{'0':'男','1':'女'}" label="" headerKey="" headerValue="请选择性别"></s:select></li>
                    <li><b>出生日期</b><input type="date" name="user.birthday" value="<s:property value="user.birthday"/>"  id="birthDate" > </li>
                    <li>
                    </li>
                    
                </ul>
                <div style=" text-align:center;" class="online_pay_btn">
	                    	<a href="javascript:fileloadon();" >保存</a>
                    	</div>
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
   
    <script type="text/javascript">
    function fileloadon() {
    	//alert("aa");
            /* $("#form1").ajaxSubmit({
                type: "post",
                url: "wxMoreCenterController.do?moreMyInfoEditors",
                data:$("#form1").serialize(),
                success: function (data) {
                	alert("66");
                	var obj=eval("(" + data + ")");
       				 if(obj.msg=="success"){
       					 $("#form1").clearForm();
       					megs("修改成功");
       			  	    window.location.href = "wxMoreCenterController.do?moreMyInfoShow";
	       			}else{
	       				megs("网络异常,请稍后再试!!!");
	       			} 
                },
                error: function (msg) {
                	megs("网络异常,请稍后再试!!!");    
                }
            });  */
          var flag= true;
          var email=$("#email").val();
          var reg= /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;   
          if(email || !email==""){//如果输入email 不为空 
            if(!reg.test(email)){
            	alert("邮箱格式不对");
            	flag= false;
            }
          }
          var v_birthDate =$('#birthDate').val();
// 	      $("#my_birthDate").val(v_birthDate);
	      if(flag){
	          $("#form1").submit();
	      }else{
	    	  alert("网络异常,请稍后再试!!!");    
	      }
       
    }
</script>
   
</body>
</html>