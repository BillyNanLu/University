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
    
    <title>My JSP 'writeFile.jsp' starting page</title>
    
  </head>
  
  <body>
    <%
    	String fileDir = request.getParameter("fileDir");
    	String fileName = request.getParameter("fileName");
    	String fileContent = request.getParameter("fileContent");
    	byte c[] = fileContent.getBytes("iso-8859-1");
    	fileContent = new String(c);
    	File f = new File(fileDir, fileName);
    	try {
    		FileOutputStream  output = new FileOutputStream(f);
    		byte bb[] = fileContent.getBytes();
    		output.write(bb, 0, bb.length);
    		output.close();
    		out.println("文件写入成功");
    		out.println("<br>文件所在的目录: " + fileDir);
    		out.println("<br>文件的名字: " + fileName);
    	} catch(IOException e) {
    		out.println("文件写入失败" + e);
    	}
    %>
  </body>
</html>
