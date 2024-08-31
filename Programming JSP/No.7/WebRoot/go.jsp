<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'go.jsp' starting page</title>
    
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
    	String address = request.getParameter("where");
    	if (address != null) {
    		if (address.equals("163"))
    			response.sendRedirect("http://www.163.com");
    		else if (address.equals("yahoo"))
    			response.sendRedirect("http://www.yahoo.com");
    		else if (address.equals("sohu"))
    			response.sendRedirect("http://www.sohu.com");
    	}
    %>
    
        请选择: <br>
    <form action="" method="GET">
    	<select name="where">
    		<option value="163" select>网易</option>
    		<option value="sohu">搜狐</option>
    		<option value="yahu">雅虎</option>
    	</select>
    	<input type="submit" value="go" name="submit"/>
    </form>
  </body>
</html>
