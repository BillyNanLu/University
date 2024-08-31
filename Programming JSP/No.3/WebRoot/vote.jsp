<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'vote.jsp' starting page</title>
    
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
   	<Font size=4>
   		<FORM actio="voteanswer.jsp" method=post name=form>
   			
   			<P>李白是中国历史上哪个朝代的人:<br></P>
   			
   			<input type="radio" name="r" value="a"/>宋朝
   			<input type="radio" name="r" value="b"/>唐朝
   			<input type="radio" name="r" value="c"/>明朝
   			<input type="radio" name="r" value="d" checked="ok"/>元朝
   			
   			<P>红楼梦的作者是:<br></P>
   			<input type="radio" name="p" value="a"/>曹雪芹
   			<input type="radio" name="p" value="b"/>罗贯中
   			<input type="radio" name="p" value="c"/>李白
   			<input type="radio" name="p" value="d" checked="ok"/>司马迁
   			<br/>
   			
   			<input type="submit" name="submit" value="提交答案" />
   		</FORM>
   	</Font>
  </body>
</html>
