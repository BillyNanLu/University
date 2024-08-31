<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>footballanswer</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">

  </head>
  
  <body bgcolor=cyan>
  	<Font size = 2>
    <% 
    	request.setCharacterEncoding("utf-8");
    	String name = request.getParameter("name");
    	String sex = request.getParameter("xb");
    	String secret = request.getParameter("secret");
    	String item[] = request.getParameterValues("item");
    	out.println("<P>您的姓名:"+name+"</P>");
    	out.println("<P>您的性别:"+sex+"</P>");
    	out.println("<P>您喜欢的球队:");
    	if (item == null)
    		out.print("一个都不喜欢");
    	else {
    		for (int k = 0; k < item.length; k++)
    			out.println(""+item[k]);
    	}
    	out.println("<P>你提交的隐藏信息:"+secret);
    %>
    </Font>
  </body>
</html>
