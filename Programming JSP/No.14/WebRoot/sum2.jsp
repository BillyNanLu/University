<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sum2.jsp' starting page</title>

  </head>
  
  <body>
    <form id="form1" name="form1" method="post" action="">
	  	<p>
	  		输入: <input type="text" name="n" id="n" />
		</p>
	  	<p>
	    	<input type="submit" name="button" id="button" value="提交" />
		</p>
	</form>
    
    <jsp:useBean id="sum" class="billy.Sum" scope="page" />
	<jsp:setProperty name="sum" property="*" />
	<%
		out.print(sum.getSum());
	%>
    
  </body>
</html>
