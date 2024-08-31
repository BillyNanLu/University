<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>购物----欢迎页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor=cyan>
    <h2>购物----欢迎页面</h2>
	<FONT Size=4>
	<P>输入您的信息：
	<FORM action="choose.jsp" method=post name=form>
		<INPUT type="text" name="userName"> 
		<br><br>
		<INPUT type="radio" name="userKind" value="VIP">VIP(享有八折优惠)
	　　  <INPUT type="radio" name="userKind" value="普通会员" checked="ok">普通会员	
	    <br><br>
		<INPUT TYPE="submit" value="进入百货商店" name=submit>
	</FORM>
	<FONT>
  </body>
</html>
