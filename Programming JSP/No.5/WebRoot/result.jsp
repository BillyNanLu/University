<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<% String str=request.getParameter("boy");
   if(str.length()==0) 
   { 
		response.sendRedirect("inputGuess.jsp");
   }
   int guessNumber=-1;
   try
   {
     guessNumber=Integer.parseInt(str);
     Integer integer=(Integer)session.getAttribute("save");
     int realnumber=integer.intValue();
     if(guessNumber==realnumber)
     { 
       int n=((Integer)session.getAttribute("count")).intValue();
       n=n+1;
       session.setAttribute("count",new Integer(n));
       response.sendRedirect("success.jsp");
     } 
     else if(guessNumber>realnumber)
     { 
       int n=((Integer)session.getAttribute("count")).intValue();
       n=n+1;
       session.setAttribute("count",new Integer(n));
       response.sendRedirect("large.jsp");
     }
     else if(guessNumber<realnumber)
     {
        int n=((Integer)session.getAttribute("count")).intValue();
        n=n+1;
        session.setAttribute("count",new Integer(n));
        response.sendRedirect("small.jsp");
     }
   }
   catch(Exception e)
   {  
		response.sendRedirect("inputGuess.jsp");
   }
%>
