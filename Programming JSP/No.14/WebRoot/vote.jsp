<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Vote</title>

  </head>
  
  <body>
    <form action="answer.jsp" method="post" name="form1">
    	<p>
    		诗人李白是中国历史上哪个朝代的人:<br>
    		<input type="radio" name="p" value="a">宋朝
    		<input type="radio" name="p" value="b">唐朝
    		<input type="radio" name="p" value="c">明朝
    		<input type="radio" name="p" value="d" checked="ok">元朝
    	</p>
    	
    	<p>
    		小说红楼梦的作者是:<br>
    		<input type="radio" name="r" value="a">曹雪芹
    		<input type="radio" name="r" value="b" checked="ok">司马迁
    		<input type="radio" name="r" value="c">罗贯中
    		<input type="radio" name="r" value="d">李白
    	</p>
    	
    	<input type="submit" name="submit" value="提交答案"/>"
    </form>
  </body>
</html>
