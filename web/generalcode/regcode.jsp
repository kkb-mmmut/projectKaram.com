<%--
    Document:regcode.
    Auther:Kamlesh Kumar Bind
    Created on : 3 Aug, 2019, 3:44:35 PM
    Project name:E-Procurement KARAM PROJECT
--%>


<%@page import="mypack.DbManager"%>
<%

     String companyname=request.getParameter("companyname");
     String address=request.getParameter("address");
     String expertisearea=request.getParameter("expertisearea");
     String personname=request.getParameter("personname");
     String contactno=request.getParameter("contactno");
     String emailaddress=request.getParameter("emailaddress");
     String tinno=request.getParameter("tinno");
     String panno=request.getParameter("panno");
     String password=request.getParameter("password");
     DbManager dm=new DbManager();
     String regdate=dm.getDate();
     String usertype="user";
     String query1="insert into register values('"+companyname+"','"+address+"','"+expertisearea+"','"+personname+"','"+contactno+"','"+emailaddress+"','"+tinno+"','"+panno+"','"+password+"','"+regdate+"')";
     String query2="insert into login values('"+emailaddress+"','"+password+"','"+usertype+"')";
     if(dm.nonQuery(query1)==true)
     {
         if(dm.nonQuery(query2)==true)
         {
             out.print("<script>alert('Registration is done!');window.location.href='../index.jsp';</script>");
         }
     }
     else
     {
         out.print("<script>alert('Registration is not done!');window.location.href='../index.jsp';</script>");
     }
%> 
