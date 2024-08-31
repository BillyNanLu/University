<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'voteanswer.jsp' starting page</title>
    
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
    <font size=3>
    	<%
    		int n = 0;
    		String s1 = request.getParameter("r");
    		String s2 = request.getParameter("p");
    		if(s1== null)
    			s1="";
    		if(s2== null)
    			s2="";
    		if(s1.equals("b"))
    			n++;
    		if(s2.equals("a"))
    			n++;
    	%>
    	
    	<p>您得了<%=n%>分</p>
    </font>
  </body>
</html>
