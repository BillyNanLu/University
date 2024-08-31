<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
	<head>
	<title>用Cookie实现免登录网页</title>
	</head>
	
	<body>
		<%
		String username=null;						
		boolean cf=false;						
		//检查Cookies
		Cookie [] cookies = request.getCookies();	
		if (cookies != null)					
		{
			for(int i=0; i<cookies.length; i++)		
			{
				Cookie ck = cookies[i];				
				if ("username".equals(ck.getName())) //如果Cookie中存在用记标识username
				{
					username=ck.getValue();			//从Cookies取得用户标识内容
					cf=true;			       //设置标志cf为true，即用户合法
				}
			}
		}
		
		if(!cf)	 //如果cf为false，即不合法
		{
			//下面程序段检查用户从表单中提交的用户名和密码是否正确
			//如果正确，则将用户名作为标识存储到名为username的Cookie中
		  String pwd=request.getParameter("pwd");
		  String user=request.getParameter("user");
		 
		  if(pwd!=null && user!=null)
		  {
		  	if(pwd.equals("") || user.equals(""))
			{
				out.println("用户名和密码不能为空!");
			}
			else
			{
			  if(pwd.equals("pass") && user.equals("admin")) 
			  {
			  //创建新的Cookies对象
			  Cookie c=new Cookie("username",user);	
			  c.setMaxAge(30);	  		//设置Cookie时效为30秒
			  response.addCookie(c);	 	//将Cookie发送到客户端
			  username=user;
			  cf=true;				//设置标志为合法		
			  }
			  else
			  {
			  	out.println("用户名或密码错误，请重新输入!");
			  }
			}
		  }
		}
		
		if(!cf)			
		{
		//如果用户不合法或未登录，则显示下面的表单
		%>
		<h2 align="center">用户登录</h2>
		<form name="form1" method="post" action="">
		  <p>用户：
		    <input name="user" type="text" size="8" maxlength="16">
		(用户名admin)</p>
		  <p>密码：
		    <input name="pwd" type="password" size="8" maxlength="12">
		    (口令pass)</p>
		  <p>
		    <input type="reset" name="reset" value="重置">
		    <input type="submit" name="submit" value="提交">
		  </p>
		</form>
		
		<%
		}
		else
		{
		 out.println("<font color=red>欢迎"+username+"进入本站！</font>");
		}
		%>
	</body>
</html>