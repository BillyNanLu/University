<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>购物----商品选择页面</title>
    
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
    <h2>购物----商品选择页面</h2>
	<FONT Size=4>
	<%
		request.setCharacterEncoding("utf-8");
	   	String s=request.getParameter("userName");
	                session.setAttribute("name",s);
	                String k=request.getParameter("userKind");
		session.setAttribute("kind",k);
		out.println("欢迎"+k+":"+s+"来到百货商店！");
	%>
	<P>请选择要购买的商品：
	<FORM action="pay.jsp" method=post name=form>
		<input name="buyGoods" type="checkbox" value= "衣服" >衣服120
	  	<input name="buyGoods" type="checkbox" value= "裤子" >裤子100
	  	<input name="buyGoods" type="checkbox" value= "鞋" >鞋80<br><br>
	    <INPUT TYPE="submit" value="提交" name=submit>
	</FORM>  
	</FONT>
  </body>
</html>
