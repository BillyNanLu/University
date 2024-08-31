<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">   
    <title>Time</title>
  </head>
  
  <body>
    <%Date date = new Date(); %>
    <%=date.getYear()+1900 %>年<br>
    <%=date.getMonth()+1 %>月<br>
    <%=date.getDate() %>日<br>
    <%=date.getHours() %>时<br>
    <%=date.getMinutes() %>分<br>
    <%=date.getSeconds() %>秒
  </body>
</html>
