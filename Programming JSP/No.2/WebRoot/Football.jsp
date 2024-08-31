<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Football</title>
    
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
  	<font=2>
    <form method=post name=form>
    	<br>姓名: <input type="text" name="name" value="张三"/></br>
    	<br>性别: <input type="radio" name="xb"  value="男" checked="default">男
    		<input type="radio" name="xb"  value="女">女
    	<br/>
    	<br>选择您喜欢的球队:
    		<input type="checkbox" name="item" value="国际米兰队"/>国际米兰队
    		<input type="checkbox" name="item" value="AC米兰队"/>AC米兰队
    		<input type="checkbox" name="item" value="罗马队"/>罗马队
    		<input type="checkbox" name="item" value="慕尼黑队"/>慕尼黑队
    	</br>
    	<input type="hidden" value="我是球迷，但不会踢球" name="secret"/>
    	<p>
	    	<input type="submit" value="提交" name="submit"/>
	    	<input type="reset" value="重置"/>
	    </p>
    </form>
    </font>
  </body>
</html>
