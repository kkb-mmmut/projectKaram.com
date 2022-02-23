<%-- 
    Document   : changepasswordcode
    Created on : 7 Aug, 2019, 3:15:07 PM
    Author     : Kamelsh Bind
    Project: Karam E-Procurement
--%>
<%@page import="mypack.DbManager"%>
<%
    String oldpassword=request.getParameter("oldpassword");
    String newpassword=request.getParameter("newpassword");
    String confirmpassword=request.getParameter("confirmpassword");
    String userid=session.getAttribute("userid").toString();
    if(newpassword.equals(confirmpassword))
    {
        String query1="update login set password='"+newpassword+"' where userid='"+userid+"' and password='"+oldpassword+"'";
        String query2="update register set password='"+newpassword+"' where emailaddress='"+userid+"'";
        DbManager dm=new DbManager();
        if(dm.nonQuery(query1)==true)
        {
            if(dm.nonQuery(query2)==true)
            {
                out.print("<script>alert('Password is changed!');window.location.href='../logout.jsp';</script>");
            }
        }
        else
        {
            out.print("<script>alert('Password is not change!');window.location.href='../changepassword.jsp';</script>");
        }
        
    }
    else
    {
        out.print("<script>alert('Confirm password is not matched!');window.location.href='../changepassword.jsp';</script>");
    }
    
    
%>