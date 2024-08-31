<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="java.io.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'manager.jsp' starting page</title>

  </head>
  
  <body>
    <%
    	String s[] = new String[8];
    	
    	s[0] = request.getParameter("path1");
    	s[1] = request.getParameter("name1");
    	s[2] = request.getParameter("path2");
    	s[3] = request.getParameter("name2");
    	s[4] = request.getParameter("path3");
    	s[5] = request.getParameter("name3");
    	s[6] = request.getParameter("path4");
    	s[7] = request.getParameter("name4");
    	for (int i = 1; i < s.length; i++) {
    		if (s[i] == null)
    			s[i] = "";
    		else
    			s[i] = new String(s[i].getBytes("ISO-88591-1"));
    	}
    	File dir2=new File(s[0],s[1]);
	    File dir3=new File(s[2],s[3]);
	    File dir4=new File(s[4],s[5]);
	    File dir5=new File(s[6],s[7]);  	
    %>
    
    <%=s[1] %> 目录是否创建成功? <%=dir2.mkdir() %>
    <p>
    	<%=s[3] %>文件是否创建成功? <%=!dir3.exists() %>
    	<%
    		if(!dir3.exists())
    			dir3.createNewFile();
    	%>
    </p>
    <p>
    	<%=s[5]%>目录是否删除成功？<%boolean b1=dir4.delete();%>
	  	<%=b1%>
	</p>
	<p>
		<%=s[7]%>文件是否删除成功? <%boolean b2=dir5.delete();%>
	  	<%=b2%>
	</p>
  </body>
</html>
