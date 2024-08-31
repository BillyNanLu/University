<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'inputGuess.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor=cyan>
    <FONT Size=2>
		<P>随机分给了你一个1到100之间的数，请猜！
		  <%    
		     int number=(int)(Math.random()*100)+1;
		     session.setAttribute("count",new Integer(0));
		     session.setAttribute("save",new Integer(number));
		  %>
   		<FORM action="result.jsp" method="post" name=form>
    		输入你的猜测：<INPUT type="text" name="boy" > 
    		<INPUT TYPE="submit" value="送出" name="submit">
   		</FORM>
	</FONT>
  </body>
</html>
