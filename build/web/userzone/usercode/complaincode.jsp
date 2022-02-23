 <%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%-- 
    Document   : userhome
    Created on : 6 Aug, 2019, 5:11:02 PM
    Author     : Kamlesh Kumar Bind
    Project Page name: complaint java code
    Project Name:E-Procurement
--%>
<%
    String subject=request.getParameter("subject");
    String complaintext=request.getParameter("complaintext");
    String emailaddress=session.getAttribute("userid").toString();
    DbManager dm=new DbManager();
    String query="select personname from register where emailaddress ='"+emailaddress+"'";
    ResultSet rs=dm.selectQuery(query);
    rs.next();
    String name=rs.getString("personname");
    String complaindate=dm.getDate();

    query="insert into complain(name,emailaddress,subject,complaintext,complaindate) values('"+name+"','"+emailaddress+"','"+subject+"','"+complaintext+"','"+complaindate+"')";  
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Compain is logged!');window.location.href='../userhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Compain is not logged!');window.location.href='../userhome.jsp';</script>");
    }
%>
