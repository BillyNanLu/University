<%@ page language="java" import="mypackage.*" pageEncoding="utf-8"%>

<html>
  <head>
    <title>My JSP 'sum.jsp' starting page</title>
  </head>
  
  <body>
    <form id="form1" name="form1" method="post" action="">
    	<p>输入: <input type="text" name="n" id="n"></p>
    	<p><input type="submit" name="button" id="button" value="提交"/></p>
    </form>
    
    
    <jsp:useBean id="sum" class="mypackage.Sum" scope="page" />
    <jsp:setProperty property="*" name="sum"/>
    <% out.print(sum.getSum());%>
    "
  </body>
</html>
