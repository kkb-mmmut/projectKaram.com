<%-- 
    Document   : answercode
    Created on : 8 Aug, 2019, 3:52:00 PM
    Author     : dell
--%>
<%@page import="mypack.DbManager"%>
<%
    String qid=request.getParameter("qid");
    String answertext=request.getParameter("answertext");
    String answeredby=session.getAttribute("userid").toString();
    DbManager dm=new DbManager();
    String posteddate=dm.getDate();
    String query="insert into answer(answertext,answeredby,qid,posteddate) values('"+answertext+"','"+answeredby+"','"+qid+"','"+posteddate+"')";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Answer is posted!');window.location.href='../discussion.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Answer is not posted!');window.location.href='../discussion.jsp';</script>");
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
%>
