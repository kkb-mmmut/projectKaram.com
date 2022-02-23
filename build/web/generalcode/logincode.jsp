<%-- 
    Document   : logincode
    Created on : 6 Aug, 2019, 3:53:27 PM
    Author     : Kamlesh Kumar Bind
    project    : E-Procurement
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    String userid=request.getParameter("userid");
    String password=request.getParameter("password");
    String query="select usertype from login where userid='"+userid+"'and password='"+password+"'";
    DbManager dm=new DbManager();
    ResultSet rs=dm.selectQuery(query);
    if(rs.next()==true)
    {
        String usertype=rs.getString("usertype");
        if(usertype.equals("user"))
        {
            session.setAttribute("userid", userid);
            response.sendRedirect("../userzone/userhome.jsp");
            
        }
        else if(usertype.equals("admin"))
        {
            session.setAttribute("adminid",userid);
            response.sendRedirect("../adminzone/adminhome.jsp");
        }
    }
    else
    {
         out.print("<script>alert('Invalid User');window.location.href='../login.jsp';</script>");
    }
    
 %>
