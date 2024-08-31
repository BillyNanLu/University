<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.io.*"%>
<HTML>
	<BODY>
	   <%
	      File f=new File("e:/read.txt");
	      try {
	          FileReader in=new FileReader(f);
	          String str=null;
	          char b[]=new char[50];
	          int n=0;
	
	          while((n=in.read(b))!=-1) {
	               str=new String(b,0,n);
	               out.print(str);
	          }
	          in.close();
	
	      }
	      catch(IOException e){}
	   %>
	
	</BODY>
</HTML>
