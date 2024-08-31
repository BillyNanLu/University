<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>在线人数</title>

  </head>
  
  <body>
    <%! int i = 0; %>
    <%i++; %>
    <p>您是第<%=i %>个访问此页面的人数</p>
  </body>
</html>
