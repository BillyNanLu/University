<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'newsok.jsp' starting page</title>
    
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
    	String name=(String)session.getValue("namesex");
    	String news[] = new String[5];
    	for (int i = 0; i < news.length; i++) {
    		String param = "news" + i;
    		String getparam = request.getParameter(param);
    		if (getparam != null) {
    			news[i] = new String(getparam.getBytes("iso-8859-1"), "utf-8");
    			synchronized(application) {
    				Integer count = (Integer)application.getAttribute(param);
    				if (count == null)
    					count = new Integer(0);
    				count = new Integer(count.intValue() + 1);
    				application.setAttribute(param, count);
    			}
    		}
    	}
    %>
    <p>
    	<%=(String)session.getValue("namesex") %>
    	，您所感兴趣的新闻栏目如下:
    </p>
    <%
    	for (int i = 0; i < news.length; i++) {
    		if (news[i] != null) {
    			out.print("<p>");
    			out.println(news[i]);
    			out.println("</p>");
    		}
    	}
    	String newsname[] = {"国际时事", "国内实时", "体育新闻", "娱乐新闻", "社区新闻"};	
    	for (int i = 0; i < news.length; i++) {
    		Integer count = (Integer)application.getAttribute("news"+i);
    		if (count == null)
    			count = new Integer(0);
    		out.println("<p>选择" + newsname[i] + "的人次为" + count + "</p>");
    		
    	}
    %>
  </body>
</html>
