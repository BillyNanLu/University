<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="java.io.*"%>
<HTML>
	<BODY >
	   <%
	      File fread=new File("e:/test/read.txt");
		  File fwrite=new File("e:/test/write.txt"); //ִ�и�����,���write.txt������,�򴴽����ļ�
	
	      try {
	          FileReader in=new FileReader(fread);
	          BufferedReader bufferin=new BufferedReader(in);
	
	          FileWriter outfile=new FileWriter(fwrite,true);
	          BufferedWriter bufferout=new BufferedWriter(outfile);
	
	                      
	          String str=null;
	          while((str=bufferin.readLine())!=null) {
	               bufferout.write(str);
	               out.print("<BR>"+str);
	               bufferout.newLine();//������д��һ���зָ���
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
