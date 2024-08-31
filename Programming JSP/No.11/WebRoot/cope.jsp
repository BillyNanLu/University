<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.io.*"%>
<HTML>
	<BODY >
	   <%
	      File fread=new File("e:/test/read.txt");
		  File fwrite=new File("e:/test/write.txt"); //执行该语句后,如果write.txt不存在,则创建该文件
	
	      try {
	          FileReader in=new FileReader(fread);
	          BufferedReader bufferin=new BufferedReader(in);
	
	          FileWriter outfile=new FileWriter(fwrite,true);
	          BufferedWriter bufferout=new BufferedWriter(outfile);
	
	                      
	          String str=null;
	          while((str=bufferin.readLine())!=null) {
	               bufferout.write(str);
	               out.print("<BR>"+str);
	               bufferout.newLine();//向流中写入一个行分隔符
	          }
	          bufferout.flush();
	          bufferout.close();
	          outfile.close();
	          bufferin.close();
	          in.close();
	          
	      }
	      catch(IOException e) {}
	   %>
	</BODY>
</HTML>
