<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'wanshu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor=yellow>
    <font size=3>
    	<br>1到100内的完数有：
    	<%
    		int i, j, sum;
    		for (i = 1; i <= 1000; i++) {
    			sum = 0;
    			for (j = 1; j < i; j++) {
    				if (i % j == 0)
    					sum = sum + j;
    			}
    			if (sum == i)
    				out.print(" "+i);
    		}
    	%>
    </font>
  </body>
</html>
