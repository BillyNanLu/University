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

  </head>
  
  <body>
   		请选择：
   		<form method="get" action="">
   			<select name="where">
   				<option value="163" selected>网易</option>
   				<option value="sohu">搜狐</option>
   				<option value="yahu">雅虎</option>
   			</select>
   			
   			<input type="submit" name="submit" value="go"/>
   		</form>
   		
   		
   		<%
   			String address = request.getParameter("where");
   			if (address != null) {
   				if (address.equals("163"))
   					response.sendRedirect("http://www.163.com");
   				else if (address.equals("sohu"))
   					response.sendRedirect("http://www.sohu.com");
   				else if (address.equals("yahu"))
   					response.sendRedirect("http://www.yahoo.com");
   			}
   		%>
  </body>
</html>
