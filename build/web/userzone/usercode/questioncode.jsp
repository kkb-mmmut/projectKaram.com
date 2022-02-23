<%-- 
    Document   : questioncode
    Created on : 8 Aug, 2019, 2:10:45 PM
    Author     : Kamlesh Kumar Bind
    Project   : E-Procurement
--%>

<%@page import="mypack.DbManager"%>
<%

    String questiontext=request.getParameter("questiontext");
    String askedby=session.getAttribute("userid").toString();
    DbManager dm=new DbManager();
    String posteddate=dm.getDate();
    String query="insert into question(questiontext,askedby,posteddate) values('"+questiontext+"','"+askedby+"','"+posteddate+"')";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Question is posted !');window.location.href='../discussion.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Question is not posted !');window.location.href='../discussion.jsp';</script>");
    }


%> 
