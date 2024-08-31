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
    
    <title>My JSP 'readContent.jsp' starting page</title>

  </head>
  
  <body>
    <%
    	String fileDir = request.getParameter("fileDir");
    	String fileName = request.getParameter("fileName");
    	
    	File dir = new File(fileDir);
    	File f = new File(dir, fileName);
    	try{
    		FileInputStream in = new FileInputStream(f);
    		int m = -1;
    		byte bb[] = new byte[1024];
    		String content = null;
    		while ((m=in.read(bb))!=-1) {
    			content = new String(bb, 0, m);
    			out.println(content);
    		}
    		in.close();
    	} catch(IOException e) {
    		out.println("文件读取失败" + e);
    	}
    %>
  </body>
</html>
