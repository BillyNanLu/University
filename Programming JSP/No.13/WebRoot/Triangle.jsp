<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="billylu.*" %>
<jsp:useBean id="Triangle" class="billylu.Triangle" scope="page"/>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'SimpleBean.jsp' starting page</title>

  </head>
  
  <body>
    <form action="" Method="post">
		<P>输入三角形的边A:<Input type=text name="sideA" value=0>
		<P>输入三角形的边B:<Input type=text name="sideB" value=0>
		<P>输入三角形的边C:<Input type=text name="sideC" value=0>
		<Input type=submit value="提交">
	</form>
	
	<P>
		你给出三角形的三边是：
		<jsp:setProperty name= "Triangle"  property="*"  />
		<br>边A是：<jsp:getProperty name="Triangle" property="sideA"/>
		<br>边B是：<jsp:getProperty name="Triangle" property="sideB"/>
		<br>边C是：<jsp:getProperty name="Triangle" property="sideC"/>
	</P>
	
	<P>这三个边能构成一个三角形吗？</P>
	<jsp:getProperty name="Triangle" property="trangle"/>
	
	<P>面积是：<jsp:getProperty name="Triangle" property="area"/></P>
	
  </body>
</html>
