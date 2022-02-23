<%-- 
    Document   : adminhome
    Created on : 8 Aug, 2019, 5:53:00 PM
    Author     : Kamlesh Kumar 
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
            <div id="parent">
                <form action="admincode/notificationcode.jsp" method="post"><br/><br/>
                     <h1 style="text-align:center;margin-top:-10px;font-size: 50px;font-family: Impact, sans-serif;color: white;text-shadow: 2px 2px 5px red;">
                            Enter Notification
                        </h1>
                        <br/> 
                        <table style="margin:0 auto;width:70%;"cellspacing="10px">
                             <tr>
                                <td style="height: 100px;width:35%;font-family: consolas;font-size:20px;">Enter Complain Text</td>
                                <td>
                                    <textarea name="notificationtext" required style="border-radius: 30px;padding:20px;background-color:#51BCA4;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 100px;width:98.4%;font-family: consolas;font-size:20px;color: white;"></textarea>
                                </td>
                            </tr>
                            <tr>&nbsp;</tr>
                            <tr>
                              
                                <td>
                                    &nbsp;
                                </td>
                                <td   style="text-align: center;">
                                    <input type="submit" value="Add" style="height: 40px;width:40%;box-shadow:5px 2px 5px 5px black;border-radius:20px;outline:none;font-family: consolas;font-size: 30px;cursor: pointer;"/>
                                </td>
                            </tr>
                        </table>
                        
                </form>
                <br/><br/>
                <table   style="margin:0 auto;width:90%">
                    <tr>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;">Id</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;">Notification</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;">Posted Date</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;">Delete</th>
                    </tr>
                    <th>
                         &nbsp;
                     </th>
                    <%
                        DbManager dm=new DbManager();
                        ResultSet rs=dm.selectQuery("select * from notification");
                        while(rs.next())
                        {
        
                     %>
                     
                     <tr>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:10px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;"><%=rs.getString("id")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:10px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;"><%=rs.getString("notificationtext")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:10px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;"><%=rs.getString("posteddate")%></td>
                         <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:10px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:auto;font-size:20px;color: white;"><a href="admincode/deletenotification.jsp?id=<%=rs.getString("id")%>)"> Delete</a></td>
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

 