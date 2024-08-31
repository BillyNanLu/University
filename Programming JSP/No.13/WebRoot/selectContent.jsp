<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selectContent.jsp' starting page</title>
    
  </head>
  
  <body>
    <form action="writeFile.jsp" method=post>
    	<table>
    		<td>
    			<tr>请输入存放路径(如: D:\):</tr>
    			<tr><input type="text" name="fileDir" size="30"></tr>
    		</td>
    		
    		<td>
    			<tr><br>输入保存文件的名字: </tr>
    			<tr><input type="text" name="fileName" size="30"></tr>
    		</td>
    	</table>
    	<br> 输入文件的内容: <br/>
    	<textarea name="fileContent" rows="5" cols="38"></textarea>
    	<br><input type="submit" value="提交">"
    </form>
  </body>
</html>
