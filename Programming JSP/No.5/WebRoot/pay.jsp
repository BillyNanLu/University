<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>购物----结账页面</title>
    
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
    <h2>购物----结账页面</h2>
	<FONT Size=4>
	<% 
		request.setCharacterEncoding("gb2312");
	    String inst[]=request.getParameterValues("buyGoods");
	    session.setAttribute("goodsNum",inst.length);
	    for(int i=0;i<inst.length;i++)
	    {
	        session.setAttribute("goods"+i,inst[i]);
	    }
	%>
	<BR> 
	<% 
		String customerKind=(String)session.getAttribute("kind");
		String customerName=(String)session.getAttribute("name");
		Double sum=0.0;
		String customerGoods="";
		String Info="";
		int num=Integer.parseInt(String.valueOf(session.getAttribute("goodsNum")));
		for(int i=0;i<num;i++)
		{
			customerGoods+=session.getAttribute("goods"+i)+"  ";
			if(String.valueOf(session.getAttribute("goods"+i)).equals("衣服"))
				sum+=120;
			else if(String.valueOf(session.getAttribute("goods"+i)).equals("裤子"))
				sum+=100;
			else
				sum+=80;
		}
		if(customerKind.equals("VIP"))
		{
			sum=sum*0.8;
			Info="您享有八折优惠，打折后的总金额是：";
		}
		else
			Info="总金额是：";
	%>
	<P>	<%=customerKind%>的姓名是：
	    <%=customerName%>
	<P>选择购买的商品是：
	    <%=customerGoods%>
	<P> <%=Info%>
	    <%=sum%>
	<P>欢迎您下次光临！
	</FONT>
  </body>
</html>
