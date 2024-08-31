<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Zhuce</title>
    
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
    <form name="form" method="post">
    	<p>姓名: <input type="text" name="name" /></p>
    	<p>
    		性别: <input type="radio" name="xb"  value="男" checked="default">男
    			<input type="radio" name="xb"  value="女">女
    	</p>
    	<p>密码: <input type="password" name="pwd" size="20"/></p>
    	<p>确认密码: <input type="password" name="pwd" size="20"/></p>
    	<p>
    		密码问题: <select name="pwdquestion">
    					<option value="你的姓名是?" selected="true">你的姓名是?</option>
    					<option value="你的年龄是?">你的年龄是?</option>
    					<option value="你的学历是?">你的学历是?</option>
    				</select>
    	</p>
    	<p>问题答案: <input type="text" name="answer" size="20"/></p>
    	<p>
	    	<input type="submit" name="button1" value="提交" />
	    	<input type="reset" name="button2" value="取消" />
	    </p>"
    </form>
  </body>
</html>
