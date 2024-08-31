<%@ page contentType="text/html; charset=utf-8" %>
<html>
	<head>
		<title>file</title>
	</head>
	
	<body bgcolor="#ffffff">
  		<table width="79%" border="1" align=center cellPadding=0 cellSpacing=0>
  			<form name="form2" method="post" action="view.jsp">
    			<tr>
    				<td>文件/目录浏览</td>
      				<td>输入路径： </td>
      				<td><input name="catalog" type="text" id="catalog2" value="c:/"></td>
      				<td><input type="submit" name="Submit5" value="提交"></td>
     			</tr>
     		</form>
 			<form name="form1" method="post" action="manager.jsp">
	    		<tr>
				  	<td width="20%">创建目录：</td>
			      	<td width="15%">输入路径：</td>
			      	<td width="20%"><input name="path" type="text" id="path"></td>
			      	<td width="17%">输入目录名：</td>
			      	<td width="20%"><input name="name" type="text" id="name"> </td>
      				<td width="8%">
      					<div align="center"><input type="submit" name="Submit2" value="创建"></div>
        			</td>
				</tr>
    			<tr>
					<td>创建文件</td>
      				<td>输入路径:</td>
      				<td><input name="path2" type="text" id="path2"></td>
      				<td>输入文件名：</td>
      				<td><input name="name2" type="text" id="name2"></td>
      				<td>
      					<div align="center"><input type="submit" name="Submit22" value="创建"></div>
        			</td>
        		</tr>
    			<tr>
    				<td>删除目录：</td>
      				<td>输入路径：</td>
      				<td><input name="path3" type="text" id="path3"></td>
      				<td>输入目录名：</td>
      				<td><input name="name3" type="text" id="name3"></td>
      				<td>
      					<div align="center"><input type="submit" name="Submit3" value="删除"></div>
        			</td>
        		</tr>
        		<tr>
				      <td>删除文件：</td>
				      <td>输入路径：</td>
				      <td><input name="path4" type="text" id="path4"></td>
				      <td>输入文件名：</td>
				      <td><input name="name4" type="text" id="name4"></td>
				      <td>
				      	<div align="center"><input type="submit" name="Submit4" value="删除"></div>
        			  </td>
        		</tr>
        	</form>
        </table>
     </body>
</html>

