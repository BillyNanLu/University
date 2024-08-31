<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newsselect.jsp' starting page</title>
    
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
    <% 
    	String name=request.getParameter("name");
    	name = new String(name.getBytes("iso-8859-1"), "utf-8");
    	String sex = request.getParameter("sex");
    	if (sex.equals("male"))
    		sex = "先生";
    	else
    		sex = "女士";
    	session.putValue("namesex",name+sex);
    %>
    <p>
    	<% out.println(name+sex); %>
    	，你好请继续完成调查
    </p>
    <p>您感兴趣的新闻内容有: </p>
    <form name="from1" method="post" action="newsok.jsp">
    	<p>
    		<input name="news0" type="checkbox" id="news1" value="国际时事"/>国际时事
    	</p>
    	<p>
    		<input name="news1" type="checkbox" id="news2" value="国内时事"/>国内时事
    	</p>
    	<p>
    		<input name="news2" type="checkbox" id="news3" value="体育新闻"/>体育新闻
    	</p>
    	<p>
    		<input name="news3" type="checkbox" id="news4" value="娱乐新闻"/>娱乐新闻
    	</p>
    	<p>
    		<input name="news4" type="checkbox" id="news5" value="社区新闻"/>社区新闻
    	</p>
    	<p>
    		<input type="submit" name="Submit" value="下一步"/>
    		<input type="reset" name="Submit2" value="重置"/>
    	</p>
    
    </form>
  </body>
</html>
