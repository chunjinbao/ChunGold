<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String productId=request.getParameter("productId");
String productName = request.getParameter("productName");
%>







<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<METAHTTP-EQUIV ="Pragma"CONTENT="no-cache"> <METAHTTP-EQUIV
	="Cache-Control"CONTENT="no-cache"> <METAHTTP-EQUIV
	="Expires"CONTENT="0">
<title>我的收益</title>
<meta name="viewport"
	content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="plug-in/wechat/css/public.css">
<script src="plug-in/wechat/js/jquery.min.js"></script
</head>
<style type="text/css">
.yesterday_gains_hd ul li {
	float: left;
	width: 33%;
	height: 57px;
	text-align: center;
	background: #FFF;
	box-sizing: border-box;
}
</style>
<body>
	<section class="warp">

		<div class="yesterday_gains">
			<div class="yesterday_gains_hd">
				<div class="yesterday_gains_hd_balance">
					<p>累计收益(元)</p>
					<p>
						<b>
						
						10.05
						</b>
					</p>
				</div>
				<ul class="clearfix">
					<li name="#tab1"  style="width:33.333%;"><a href="#"><p>活期金（元）</p> </a></li>
					<li name="#tab2" style="border-right:solid 1px #ccc;width:33.333%;"><a href="#"><p>定期金（元）</p> </a></li>
					<li name="#tab3" style="width:33.333%;"><a href="#"><p>特权黄金（元）</p> </a></li>
				</ul>
			</div>
			<div class="yesterday_gains_bd">
				<div class="con" id="tab1">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" id="tab1Table">
						<tr>
							<th width="33.33333%" align="center">收益（元）</th>
							<th width="33.33333%" align="center">时 间</th>
						</tr>
						
						
					</table>
					<div class="forMore" id="tab1-viewmore">点击加载更多</div>
				</div>
				<div class="con" id="tab2">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" id="tab2Table">
						<tr>
							<th width="33.33333%" align="center">项 目</th>
							<th width="33.33333%" align="center">买入时间</th>
							<th width="33.33333%" align="center">累计收益</th>
						</tr>
						
                        <s:iterator id="dingProfit" value="dpsList">
                    	<tr>
                    		<td align="center"><s:property value="productName"/></td>
                    		<td align="center"><s:property value="buyTime"/></td>
                    		<td align="center"><s:property value="profit"/></td>
						</tr>
                        </s:iterator>
						
						
					</table>
					
						<div class="forMore" id="tab2-viewmore">点击加载更多</div>
					
				</div>
				<div class="con" id="tab3">
					<table width="100%" border="0" cellspacing="0" cellpadding="0" id="tab3Table">
						<tr>
							<th width="33.33333%" align="center">收益（元）</th>
							<th width="33.33333%" align="center">时 间</th>
						</tr>
						
					</table>
					
						<div class="forMore" id="tab3-viewmore">点击加载更多</div>
					
				</div>
			</div>
<!-- 收益标签切换 -->			
<script type="text/javascript">
	function resetTabs(){
		$(".yesterday_gains_bd > .con").hide();
		$(".yesterday_gains_hd li").attr("class","");
	}
	
	var myUrl = window.location.href;
	var myUrlTab = myUrl.substring(myUrl.indexOf("#")); 
	var myUrlTabName = myUrlTab.substring(0,4);
	
	(function(){
		$(".yesterday_gains_bd > .con").hide();
		$(".yesterday_gains_hd li:first").attr("class","on");
		$(".yesterday_gains_bd > .con:first").fadeIn();
		$(".yesterday_gains_hd li").on("click",function(e) {
			e.preventDefault();
			if ($(this).attr("class") == "on"){
				return       
			}else{             
				resetTabs();
				$(this).attr("class","on");
				$($(this).attr('name')).fadeIn();
			}
		});
	
		for (i = 1; i <= $(".yesterday_gains_hd li").length; i++) {
			if(myUrlTab == myUrlTabName + i){
				resetTabs();
				$("a[name='"+myUrlTab+"']").attr("class","on");
				$(myUrlTab).fadeIn();
			}
		}
	})()
</script>



<!-- 分页数据 -->
 <script type="text/javascript">
  	var rows = 10;//每页显示记录数
  	var pageTab1 = 1;//活期金当前页
  	var pageTab2 = 1;//定期金当前页
  	var pageTab3 = 1;//特权黄金当前页
  	var total = 0;//总记录数
  	var field = "id,moneyType,dealDate,money";//字段
  	var $moreBtn = $("#tab1-viewmore");//显示更多按钮
  	$(function(){
  		
  	    //返回顶部按钮逻辑
  	    $('#tab1-gotop').on("click", function () {
  	        window.scrollTo(0, 0); 
  	    });
  	    $("#tab1-viewmore").on("click",function(){
  	    	loadDataTab1();
   	    });
  	    
  	    $("#tab2-viewmore").on("click",function(){
	    	loadDataTab2();
 	    });
  	    
  	    $("#tab3-viewmore").on("click",function(){
  	    	loadDataTab3();
	    });
  	    
  	    $("#tab1-viewmore").click();
  	    $("#tab2-viewmore").click();
  	    $("#tab3-viewmore").click();
   });
   //数据加载
   function loadDataTab1(){
	if ($("#tab1-viewmore").hasClass("disabled")) {
		return;
	}
	$("#tab1-viewmore").html("努力加载中…").addClass("disabled");
  		$.ajax({
              type: "POST",
              url: "wxBankbookController.do?getgjbProfitJournal&moneyType=16",
              data: {field:field, rows:rows, page:pageTab1},
              dataType: "json",
              success: function(data){
                          $.each(data, function(key, value){
                           if(key=="rows"){
                            for(var i = 0; i < value.length; i++){
	                        	
                            	//console.log("article",value[i]);
                            	setData("#tab1Table",value[i]);
                            }
                        }
                        if(key=="total"){
                        	total = value;
	                    }
                          });
          		        if ((pageTab1 * rows) >= total){
          		        	$("#tab1-viewmore").html("已显示全部").addClass("disabled");
          		        	 $("#tab1-viewmore").off('click');
          				} else {
          					pageTab1++;
          					$("#tab1-viewmore").html("加载更多").removeClass("disabled");
          				}
                       }
          });
}
   
   function loadDataTab2(){
		if ($("#tab2-viewmore").hasClass("disabled")) {
			return;
		}
		$("#tab2-viewmore").html("努力加载中…").addClass("disabled");
	  		$.ajax({
	              type: "POST",
	              url: "wxBankbookController.do?getgjbProfitJournal&moneyType=18",
	              data: {field:field, rows:rows, page:pageTab2},
	              dataType: "json",
	              success: function(data){
	                          $.each(data, function(key, value){
	                           if(key=="rows"){
	                            for(var i = 0; i < value.length; i++){
		                        	
	                            	//console.log("article",value[i]);
	                            	setData("#tab2Table",value[i]);
	                            }
	                        }
	                        if(key=="total"){
	                        	total = value;
		                    }
	                          });
	          		        if ((pageTab2 * rows) >= total){
	          		        	$("#tab2-viewmore").html("已显示全部").addClass("disabled");
	          		        	 $("#tab2-viewmore").off('click');
	          				} else {
	          					pageTab2++;
	          					$("#tab2-viewmore").html("加载更多").removeClass("disabled");
	          				}
	                       }
	          });
	} 
   
   function loadDataTab3(){
		if ($("#tab3-viewmore").hasClass("disabled")) {
			return;
		}
		$("#tab3-viewmore").html("努力加载中…").addClass("disabled");
	  		$.ajax({
	              type: "POST",
	              url: "wxBankbookController.do?getgjbProfitJournal&moneyType=56",
	              data: {field:field, rows:rows, page:pageTab3},
	              dataType: "json",
	              success: function(data){
	                          $.each(data, function(key, value){
	                           if(key=="rows"){
	                            for(var i = 0; i < value.length; i++){
		                        	
	                            	//console.log("article",value[i]);
	                            	setData("#tab3Table",value[i]);
	                            }
	                        }
	                        if(key=="total"){
	                        	total = value;
		                    }
	                          });
	          		        if ((pageTab3 * rows) >= total){
	          		        	$("#tab3-viewmore").html("已显示全部").addClass("disabled");
	          		        	 $("#tab3-viewmore").off('click');
	          				} else {
	          					pageTab3++;
	          					$("#tab3-viewmore").html("加载更多").removeClass("disabled");
	          				}
	                       }
	          });
	} 
   
   
//数据填充展示
function setData(tableId,journal){
	
	var money_type = "";
	var deal_money = journal.money;
	var deal_date = getDate(journal.dealDate).Format("yyyy-MM-dd");
		
  $(tableId).append("<tr width='50%' align='center'><td>+"+deal_money+"</td><td width='50%' align='center'>"+deal_date+"</td></tr>");
	
}
Date.prototype.Format = function (fmt) { 
    var o = {
        "M+": this.getMonth() + 1, //月份 
        "d+": this.getDate(), //日 
        "h+": this.getHours(), //小时 
        "m+": this.getMinutes(), //分 
        "s+": this.getSeconds(), //秒 
        "q+": Math.floor((this.getMonth() + 3) / 3), //季度 
        "S": this.getMilliseconds() //毫秒 
    };
    if (/(y+)/.test(fmt)) fmt = fmt.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    for (var k in o)
    if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
    return fmt;
}

//字符串转日期格式，strDate要转为日期格式的字符串
 function getDate(strDate) {
     var date = eval('new Date(' + strDate.replace(/\d+(?=-[^-]+$)/,
      function (a) { return parseInt(a, 10) - 1; }).match(/\d+/g) + ')');
     return date;
 }
  </script>


		</div>
		<nav>
			<!--底部导航-->
	        
			
<nav>
	<ul class="clearfix">
    	<li><a href="/chunjinbao/nav_index" ><i class="n1"></i>首页</a></li>
        <li><a href="/chunjinbao/nav_products" class="active"><i class="n2"></i>淘金</a></li>
        <li><a href="/chunjinbao/nav_gold" ><i class="n3"></i>金库</a></li>
        <li><a href="/chunjinbao/nav_more"  ><i class="n4"></i>我的</a></li>
    </ul>
</nav>

			<!--end底部导航-->
       </nav>

	</section>

</body>
</html>