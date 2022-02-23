<%-- 
    Document   : complains
    Created on : 9 Aug, 2019, 4:42:36 PM 
    Author     : Kamlesh Kumar 
    Project    : e-Procurement
--%>
<a href="adminhome.jsp"></a>
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    if(session.getAttribute("adminid")==null || session.getAttribute("adminid")=="")
    {
        response.sendRedirect("../login.jsp");
    }
    else
    {
     
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Procurement</title>
    </head>
    <body background="images/karam.jpg" style="background-size:cover;background-attachment: fixed;">
         <div id="outer">
            <div id="header">
                <div id="logo">
                    <img src="images/logo.png"> 
                   
                </div>
                <div id="banner">
                    <span id="kamlesh">   E-Procurement   </span>
                </div>
            </div>
             <div id="menu">
                 <ul>
                     <li><a href="adminhome.jsp">Home</a></li>
                     <li><a href="enquiries.jsp">Enquiries</a></li>
                     <li><a href="complains.jsp">Complains</a></li>
                     <li><a href="vendors.jsp">Vendors</a></li>
                     <li><a href="uploadtenders.jsp">Upload Tenders</a></li>
                      <li><a href="logout.jsp">Logout</a></li>
                 </ul>
             </div> 
            <div id="parent"><br/>
                <h1 style="text-align:center;margin-top: 10px;font-size: 50px;font-family: Impact, sans-serif;color: white;text-shadow: 2px 2px 5px red;">
                            View All Complaints
                </h1>
                <table style="margin: 0 auto; width: 90%;">
                    <tr>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:20px;color: white;">Id</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:20px;color: white;">Name</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:20px;color: white;">Email Address</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:20px;color: white;">Subject</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:20px;color: white;">Complain Text</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:20px;color: white;">Complain Date</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:20px;color: white;">Delete</th>
                    </tr>
                    <th>&nbsp;</th>
                    <%
                            DbManager dm=new DbManager();
                            ResultSet rs=dm.selectQuery("select * from complain");
                            while(rs.next())
                            {
        
                    %>
                      <tr>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:10px;color: white;"><%=rs.getString("id")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:10px;color: white;"><%=rs.getString("name")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:10px;color: white;"><%=rs.getString("emailaddress")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:10px;color: white;"><%=rs.getString("subject")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:10px;color: white;"><%=rs.getString("complaintext")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:10px;color: white;"><%=rs.getString("complaindate")%></td>
                        
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:10px;color: white;"><a href="admincode/deletecomplain.jsp?id=<%=rs.getString("id")%>)"> Delete</a></td>
                      </tr> 
                    
                    
                    <%
                            }
                     %>
                    <th>&nbsp;</th>
                </table>
            </div>
            <div id="footer">
                <div id="lfooter">
                    Copyright &copy; to KARAM
                </div>
                <div id="rfooter">
                    Developed by:Kamlesh Bind
                </div>                
            </div>            
        </div>
    </body>
</html>

<%
    }
    
%>

 