<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.io.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'view.jsp' starting page</title>
    
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
    	String catalog = request.getParameter("catalog");
    	if (catalog == null)
    		catalog="c:/";
    	File dir = new File(catalog);
    	File file[] = dir.listFiles();
    %>
         当前路径下的目录有:
     <%
     	for (int i = 0; i < file.length; i++)
     		if (file[i].isDirectory())
     			out.print("<br>" + file[i].toString());
     %>
         当前路径下的文件有:
     <%
     	for (int i = 0; i < file.length; i++)
     		if (file[i].isFile())
     			out.print("<br>" + file[i].toString());
     %>
  </body>
</html>
