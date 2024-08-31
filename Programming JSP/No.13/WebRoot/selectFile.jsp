<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selectFile.jsp' starting page</title>
    
  </head>
  
  <body>
    <form action="readContent.jsp" method="post" name="form">
    	输入存在文件的路径(如: d:/): <input type="text" name="fileDir"/>
    	<br>输入存在文件的名字(如: Hello.java): <input type="text" name="fileName"/>
    	<br><input type="submit" value="读取" name="submit"/>
    </form>
  </body>
</html>
