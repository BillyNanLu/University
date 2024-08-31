<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Answer</title>

  </head>
  
  <body>
    <%
    	int n = 0;
    	String s1 = request.getParameter("r");
    	String s2 = request.getParameter("p");
    	
    	if (s1 == null)
    		s1 = "";
    	if (s2 == null)
    		s2 = "";
    	if (s1.equals("b"))
    		n++;
    	if (s2.equals("b"))
    		n++;
    %>
    
    <p>您的总分为: <%=n %>分</p>
  </body>
</html>
