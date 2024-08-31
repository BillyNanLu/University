<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册</title>

  </head>
  
  <body>
    <p> 
    	姓名: <input type="text" name="uname">
    </p>
    <p>
    	性别:
    	<input type="radio" name="sex" value="男" selected="true">男
    	<input type="radio" name="sex" value="女">女
    </p>
    <p>
    	密码: <input type="password" name="pass1" size="20">
    </p>
    <p>
    	确认密码: <input type="password" name="pass2" size="20">
    </p>
    <p>
    	密码问题:
    	<select name="passwordconform">
    		<option value="你的姓名?" selected="true">你的姓名?</option>
    		<option value="你的年龄?">你的年龄?</option>
    	</select>
    </p>
    <p>
    	问题答案: <input type="text" name="answer" size="20">
    </p>
    <p>
    	<input type="submit" name="ok" value="提交"/>
    	<input type="reset" name="re" value="重置"/>
    </p>
    
  </body>
</html>
