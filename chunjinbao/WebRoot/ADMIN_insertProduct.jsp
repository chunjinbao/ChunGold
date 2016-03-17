<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'insert.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form action="<s:url action='product_insertProduct' />" method="post">
    	<table cellpadding="0" cellspacing="0" norder="0" align="center">  
                <caption>New User</caption>
                <tr>
                    <td>Product Name</td>
                    <td><input type="text" name="product.productName"></td>
                </tr>
                <tr>  
                    <td colspan="2"><input type="submit" value="Add"></td>   
                </tr>  
            </table>
    </form> <br />
    
  </body>
</html>
