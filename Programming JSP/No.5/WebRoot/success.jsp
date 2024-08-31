<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<HTML>
	<BODY bgcolor=cyan>
		<FONT Size=2>
			<% 
			     int count=((Integer)session.getAttribute("count")).intValue();
			     int num=((Integer)session.getAttribute("save")).intValue();
			%>
			
			<P>恭喜你，猜对了
			<BR>您共猜了<%=count%>次,这个数字就是<%=num%>。
			<BR>单击超链接返回到inputGuess.jsp页面：
			<BR><A href="inputGuess.jsp">inputGuess.jsp</A>  
		</FONT>
	</BODY>
</HTML> 
