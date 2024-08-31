<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'student.jsp' starting page</title>

  </head>
  
  <body>
    <FORM action="" Method="post">
	     <p>
	     	输入学生的姓名: <Input type=text name="name">
		 </p>
	     <p>
	       	输入学生的学号: <Input type=text name="number">
		 </p>
	     <p>
	     	输入学生的身高: <Input type=text name="height">
		 </p>
	     <p>
	     	输入学生的体重: <Input type=text name="weight">
		 </p>
		 
	     <Input type=submit value="提交">
  	</FORM>

		  <jsp:useBean id="zhang" class="billy.Student" scope="page" ></jsp:useBean>
		  <jsp:setProperty name= "zhang" property= "*" /> 
		
		  <p>
		  	名字是: <jsp:getProperty name= "zhang" property= "name" />
		  </p>
		  <p>
		        学号是: <jsp:getProperty name= "zhang" property= "number" />
		  </p>
		  <p>
		  	身高是: <jsp:getProperty name= "zhang" property= "height" />米
		  </p>
		  <p>
		  	体重是: <jsp:getProperty name= "zhang" property= "weight" />公斤
          </p>
  </body>
</html>
