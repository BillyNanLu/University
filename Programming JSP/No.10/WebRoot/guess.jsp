<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<jsp:useBean id="guess" class="mypackage.GuessNumber" scope="session" />
<jsp:setProperty name="guess" property="guessNumber" param="guessNumber" />
<br/>
<jsp:getProperty name="guess" property="result" />
<br/>这是第<<jsp:getProperty property="guessCount" name="guess"/>次猜
<br/>你给出的数是
<<jsp:getProperty property="guessNumber" name="guess"/>
<br/>
<%String str = response.encodeRedirectURL("guess.jsp"); %>
<form action="<%=str%>" method=post>
再输入你的猜测 <input type=text name="guessNumber"/>
<input type=submit value="提交"/>
</form>
<br/>
<%String str1=response.encodeRedirectURL("getNumber.jsp"); %>
<form action="<%=str1 %>" method="post" name="f">
<input type="submit" value="重玩"/>
</form>

