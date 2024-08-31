<%@ page contentType="text/html; charset=utf-8" language="java" import="mypackage.*" errorPage="" %>
<html >
<body>
<form id="form1" name="form1" method="post" action="">
  <p>输入：
    <input type="text" name="n" id="n" />
</p>
  <p>
    <input type="submit" name="button" id="button" value="提交" />
</p>
</form>

<useBean id="sum" class="mypackage.Sum" scope="page" />
<jsp:setProperty name="sum" property="*" />
<%
out.print(sum.getSum());
%>

</body>
</html>
