<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Answer</title>
    
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
    	String name = request.getParameter("name");
    	if (name == null)
    		name = " ";
    	String xb = request.getParameter("xb");
    	if (xb == null)
    		xb = " ";
    	String item = request.getParameter("item");
    	if (item == null)
    		item = " ";
    	String ah[] = request.getParameterValues("ah");
    	out.println("你的姓名: "name+"<br>");
    	out.println("你的性别: "xb+"<br>");
    	out.println("你喜欢的球队:");
    %>
  </body>
</html>
