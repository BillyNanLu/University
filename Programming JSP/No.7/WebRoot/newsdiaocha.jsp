<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newsdiaocha.jsp' starting page</title>
    
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
    <form name="form1" method="post" action="newsselect.jsp">
    	<p>欢迎参加网上调查</p>
    	<p>
    		姓名<input name="name" type="text" id="name" size="16">
    	</p>
    	<p>
    		性别
    		<input name="sex" type="radio" value="male" checked>男
    		<input name="sex" type="radio" value="female">女
    	</p>
    	<p>
    		<input type="submit" name="Submit" value="下一步"/>
    		<input type="reset" name="Submit2" value="重置"/>
    	</p>
    </form>
  </body>
</html>
