<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'equation.jsp' starting page</title>
    
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
    	String sa = request.getParameter("ia");
    	String sb = request.getParameter("ib");
    	String sc = request.getParameter("ic");
    	
    	out.println("一元二次方程的二次项、一次项系数和常数项分别是："+sa+" "+sb+" "+sc+"");
    	out.println();
    	
    	double ia = 0, ib = 0, ic = 0;
    	if (sa == null) {
    		sa = "0";
    		sb = "0";
    		sc = "0";
    	}
    	try {
    		double a = Double.parseDouble(sa);
    		double b = Double.parseDouble(sb);
    		double c = Double.parseDouble(sc);
    		double disk = b * b - 4 * a * c;
    		if (a != 0) {
    			if (disk >= 0) {
    				double root1 = (-b + Math.sqrt(disk)) / (2 * a), root2 = (-b - Math.sqrt(disk)) / (2 * a);
    				out.println("<br>一元二次方程的两个实数："+root1+", "+root2+"");
    			} else {
    				out.println("<br>一元二次方程没有实根");
    			}
    		} else {
    			out.println("<br>不是一元二次方程");
    		}
    	} catch(Exception e) {
    		out.println("<br>请输入一元二次方程的系数");
    	}	
    %>
    
    <form name="form1" method="post", action="">
    	<p>
    		输入二次项系数a: <input name="ia" type="text" id="ia"><br>
    		输入二次项系数b: <input name="ib" type="text" id="ib"><br>
    		输入二次项系数c: <input name="ic" type="text" id="ic"><br>
    	</p>
    	<p>
    		<input type="submit" name="Submit" value="提交"/>
    	</p>
    	
    </form>
    
  </body>
</html>
