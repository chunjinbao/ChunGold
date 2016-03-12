<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>









<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>活期金</title>
<meta name="viewport" content="width=device-width, maximum-scale=1.0, initial-scale=1.0, user-scalable=0" />
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="plug-in/wechat/css/swiper.min.css">
<link rel="stylesheet" href="plug-in/wechat/css/public.css">
<link rel="stylesheet" href="plug-in/wechat/css/layer.css">
<script src="plug-in/wechat/js/jquery.min.js"></script>
<script src="plug-in/wechat/js/swiper.min.js"></script>
<script src="plug-in/wechat/js/layer.m.js"></script>
</head>

<body onload="toLoadTitle()">
	<section class="warp">
    
        <div class="regularly_buy">            
            <form id="buyCurrentForm" name="buyCurrentForm" action="wxOrderCurrentController.do?doBuyCurrent" method="post">
            <input type="hidden" id="proId" name="proId" value="402880e951771ea201517722f561000a">
            <input type="hidden" id="buy_type" name="buy_type" value="1">
            <input type="hidden" id="goldprice" name="goldprice" value="263.3">
            <div align="center" style="padding-top: 15px;font-size:16px;color:#ff7200;">
            	随买随卖，享年化收益：2.50%
            </div>
            
            <div class="regularly_buy_tit">
            	<ul class="clearfix">
                    <li name="#tab1" onclick="tabChange(1);"><a href="javascript:void(0)">按金额购买</a></li>
                    <li name="#tab2" onclick="tabChange(2)"><a href="javascript:void(0)">按克重购买</a></li>
                </ul>
            </div>
            <div class="regularly_buy_con">
            	<div class="con" id="tab1">
                	<ul>
                    	<li>
                        	<span>购买金价</span>
                            <input name="" type="text" placeholder="实时金价" value="263.3 元/克" class="price" readonly="readonly">
                            
                        </li>
                        <li><span>金额</span><input name="count1" type="number" placeholder="输入购买金额" id="count1" onkeyup="check_input('count1',2);"></li>
                        <li><span>预计克重</span><input name="total1" type="text" placeholder="0.000克"  id="total1" value="0"  readonly="readonly"></li>
                        <li><span>购金券</span><b>暂无购金券可用</b></li>
                    </ul>
                    <div class="regularly_buy_check">
                    	<input name="agree1" type="checkbox" value="" id="agree1" class="check" checked>
                        <label for="agree1"><em>我已阅读并同意<a href="wxHelpController.do?agreement">《购金宝服务协议》</a></em></label>
                    </div>
                    <div class="next"><a href="javascript:void(0);">下一步</a></div>
                    <div class="regularly_buy_info">
                    	<p>温馨提示</p>
                        <p>1、一元起购，随买随卖；</p>
                        <p>2、预计买入后第二天计算收益；</p>
                        <p>3、买入无任何手续费，黄金卖出手续费为0.35%；</p>
                        <p>4、每人日累计可买入1000克，卖出上限为500克；</p>
                    </div>
                </div>
                <div class="con" id="tab2">
                	<ul>
                    	<li>
                        	<span>购买金价</span>
                            <input name="" type="text" placeholder="实时金价" value="263.3 元/克" class="price" readonly="readonly">
                            
                        </li>
                         
                         <li><span>克重</span><input name="count2" type="number" placeholder="输入购买克重" id="count2" onkeyup="check_input('count2',4);"></li>
                        <li><span>预计金额</span><input name="total2" type="text" placeholder="0.000元"  id="total2" value="0"  readonly="readonly"></li>
                    </ul>
                    <div class="regularly_buy_check">
                    	<input name="agree2" type="checkbox" value="" id="agree2" class="check" checked>
                        <label for="agree2"><em>我已阅读并同意<a href="wxHelpController.do?agreement">《购金宝服务协议》</a></em></label>
                    </div>
                    <div class="next"><a href="javascript:void(0);">下一步</a></div>
                    <div class="regularly_buy_info">
                        <p>温馨提示</p>
                        <p>1、一元起购，随买随卖；</p>
                        <p>2、预计买入后第二天计算收益；</p>
                        <p>3、买入无任何手续费，黄金卖出手续费为0.35%；</p>
                        <p>4、每人日累计可买入1000克，卖出上限为500克；</p>
                    </div>
                </div>
            </div>
            <script type="text/javascript">
        		function toLoadTitle(){
        			$("#count1").val('');
        			$("#count2").val('');
        			$("#total1").val('');
        			$("#total2").val('');
        			$("#buy_type").val(1);
        			$("#count1").focus();
        		}
				function resetTabs(){
					$(".regularly_buy_con > .con").hide();
					$(".regularly_buy_tit li").attr("class","");
				}
				function tabChange(TYPE){
					$("#buy_type").val(TYPE);
				}
				var myUrl = window.location.href;
				var myUrlTab = myUrl.substring(myUrl.indexOf("#")); 
				var myUrlTabName = myUrlTab.substring(0,4);
				
				(function(){
					$(".regularly_buy_con > .con").hide();
					$(".regularly_buy_tit li:first").attr("class","on");
					$(".regularly_buy_con > .con:first").fadeIn();
				
					$(".regularly_buy_tit li").on("click",function(e) {
						
						e.preventDefault();
						if ($(this).attr("class") == "on"){
							return       
						}else{             
							resetTabs();
							$(this).attr("class","on");
							$($(this).attr('name')).fadeIn();
						}
					});
				
					for (i = 1; i <= $(".regularly_buy_tit li").length; i++) {
						if(myUrlTab == myUrlTabName + i){
							resetTabs();
							$("a[name='"+myUrlTab+"']").attr("class","on");
							$(myUrlTab).fadeIn();
						}
					}

                    
                    
                    var price = parseFloat($(".price").val());
                    $("#count1").keyup(function(){     
                        var count1 = parseFloat($(this).val());
                        $("#total1").val((count1/price).toFixed(4));
                        if(count1==0||$(this).val()==""){
                             $("#total1").val("0");
                        }
                     });

                     $("#count2").keyup(function(){     
                        var count2 = parseFloat($(this).val());                      
                        $("#total2").val((count2*price).toFixed(2));
                        if(count2==0||$(this).val()==""){
                             $("#total2").val("0");
                        }
                     });
                    $(".refresh").click(function(event) {
                    	
                    	$.getJSON("wxGoldPriceController.do?getNewestGoldPrice",function(result){
                    		if(result){
                    			
                    			if(result.new_gold_price != null){
                    				var ngprice = result.new_gold_price + " 元/克";
                        			
                        			$(".price").val(ngprice);
                    			}                    			
                    		}
                    	})
                    });
                
                    $(".next").click(function(event) {
                    	
                    	
                    	var buy_type = document.getElementById("buy_type").value;						
    					if(buy_type == 1){

    						var val1=$("#count1").val();
    						
    	                    if(val1 == null || val1 == "" || isNaN(val1)){
    	                        layer.open({
    	                            content: '请输入正确的金额',
    	                            btn: ['确 定']
    	                        });
    	                        return;
    	                    }
    	                    if(val1<1){
    	                        layer.open({
    	                            content: '请输入大于1元的金额',
    	                            btn: ['确 定']
    	                        });
    	                        return;
    	                    }
    	                    
    	                    if(val1>50000){
    	                        layer.open({
    	                            content: '请输入不大于50000的金额',
    	                            btn: ['确 定']
    	                        });
    	                        return;
    	                    }
    	                    
    	                 	// 没选中同意协议无法下一步
                            $("#agree1").prop("checked",$("#agree1").prop("checked"));
                            if($("#agree1").prop("checked")){
                                
                            }else{
                                layer.open({
                                    content: '请同意购金宝用户协议',
                                    btn: ['确 定']
                                });
                                return;
                            }
    					}
    					if(buy_type == 2){
                            
    						var val2=$("#count2").val();
    						var total2=$("#total2").val();
    	                   
    	                    if(val2 == null || val2 == "" || isNaN(val2)){
    	                        layer.open({
    	                            content: '请输入正确的克数',
    	                            btn: ['确 定']
    	                        });
    	                        return;
    	                    }
    	                    
    	                    if(total2<1){
    	                        layer.open({
    	                            content: '1元起购，请输入正确的克数',
    	                            btn: ['确 定']
    	                        });
    	                        return;
    	                    }
    	                    
    	                    if(val2>1000){
    	                        layer.open({
    	                            content: '请输入不大于1000的克数',
    	                            btn: ['确 定']
    	                        });
    	                        return;
    	                    }
    	                    
    	                 	// 没选中同意协议无法下一步
                            $("#agree2").prop("checked",$("#agree2").prop("checked"));
                            if($("#agree2").prop("checked")){
                                
                            }else{
                                layer.open({
                                    content: '请同意购金宝用户协议',
                                    btn: ['确 定']
                                });
                                return;
                            }
    					}
    					
    					
                		//$("#buyCurrentForm").submit();
                		checkAuthor();
                       
                    });
				})();
				
				function check_input(obj,Num) {
					var num = Num;  //限制小数点后输入的位数
					var elem = document.getElementById(obj);
					var point;
					
					point = '\\.';
					
					var regStrs = [
						//['^0(\\d+)$', '$1'], //禁止录入整数部分两位以上，但首位为0
						//先输0.5，再改成01.5也能通过验证
						['^0(\\d+)', '$1'],
						//['[^\\d' + point + ']+$', ''], //禁止录入任何非数字和点、
						//只能去除最后的非数字非点
						['[^\\d' + point + ']+', ''],
						//['\\.(' + pi + ')\\.+', '.$1'], //禁止录入两个以上的点
						//['^(\\d+\\.\\d{' + num + '}).+', '$1'] //禁止录入小数点后两位以上
						//假设num为2，.12.234.2345.也可以被录入
						['\\.(\\d*)\\.+', '.$1'],
						['(\\.\\d{' + num + '}).+', '$1']
					];
					//th.value = th.value.replace(/[^\d.]/g, ''); //替换所有非字符和点的字符
					//避免出现给value赋值造成输入体验不佳，这条验证和第2条重复
					//在符合条件时不给value赋值
					for (var i = 0, l = regStrs.length; i < l; i++) {
						var value = elem.value;
						var reg = new RegExp(regStrs[i][0]);
						if (reg.test(value)) {
							elem.value = elem.value.replace(reg, regStrs[i][1]);
						}
					}
				}
				
				
				//ajax校验交易密码
				function  checkAuthor(){
					$.getJSON("wxSafeController.do?getAuthStatus",function(result){
						if(result){
							if(result.code != null){
								var code = result.code;
								
								if(code != null){
									if(code == 'L'){
										if(window.confirm("您还未登录，立即前往？")){
												window.location.href = "wxLoginController.do?login";
												return;
									       	}else{
									       		
									       		return;
									       	}
								    }
								    
									if(code == 'N'){
										if(window.confirm("您还未设置交易密码，立即前往？")){
												window.location.href = "wxSafeController.do?myRealNameCertified";
												return;
									       	}else{
									       		
									       		return;
									       	}
								    }
								    
									if(code == 'U'){
										if(window.confirm("您还未进行实名认证，立即前往？")){
											
											window.location.href = "fiYeepayController.do?toBandingPay";
											return;
										}else{
								       		
								       		return;
								       	}
								    }
								}
							    $("#buyCurrentForm").submit();
							}  
						}
					});
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




