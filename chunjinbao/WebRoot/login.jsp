<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<form action="<s:url action='user_checkLogin' />" method="post">  
       <table cellpadding="0" cellspacing="0" norder="0" align="center">  
           <caption>用户登录</caption>  
           <tr>  
               <td>用户名:</td>  
               <td><input type="text" name="user.tel"></td>  
           </tr>  
           <tr>  
               <td>密  码:</td>  
               <td><input type="text" name="user.password"></td>  
           </tr>  
           <tr>  
               <td colspan="2"><input type="submit" value="登录"></td>   
           </tr>  
       </table>  
   </form>

</body>
</html>