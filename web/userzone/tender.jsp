<%-- 
    Document   : tender
    Created on : 10 Aug, 2019, 3:04:46 PM
    Author     : Kamlesh Kumar Bind
    Project    : e-Procurement
--%>
 
<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%
    if(session.getAttribute("userid")==null || session.getAttribute("userid")=="")
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
                     <li><a href="userhome.jsp">Home</a></li>
                     <li><a href="tender.jsp">Live Tenders</a></li>
                     <li><a href="discussion.jsp">Discussion</a></li>
                     <li><a href="complain.jsp">Complain</a></li>
                     <li><a href="changepassword.jsp">Change Pwd.</a></li>
                      <li><a href="logout.jsp">Logout</a></li>
                 </ul>
             </div> 
            <div id="parent">
                
                <form action="../upload" method="post" enctype="multipart/form-data"><br/> 
                     <h1 style="text-align:center;margin-top:-10px;font-size: 50px;font-family: Impact, sans-serif;color: white;text-shadow: 2px 2px 5px red;">
                            Display All Tenders
                        </h1>
                        
                <table style="margin:0 auto;width: 90%" cellspacing="10px">
                    <tr>
                        <th style="background-color:lightseagreen;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:5%;font-size:20px;color: white;">Id</th>
                        <th style="background-color:lightseagreen;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:15%;font-size:20px;color: white;">Tender Name</th>
                        <th style="background-color:lightseagreen;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:50%;font-size:20px;color: white;">Description</th>
                        <th style="background-color:lightseagreen;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:10%;font-size:20px;color: white;">File Name</th>
                        <th style="background-color:lightseagreen;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:10%;font-size:20px;color: white;">Posted Date</th>
                        <th style="background-color:lightseagreen;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:10%;font-size:20px;color: white;">Download</th>
                      </tr>
                    
                    <%
                        DbManager db=new DbManager();
                        String query="select * from uploadtender";
                        ResultSet rs=db.selectQuery(query);
                        while(rs.next())
                        {
                         
                        %>
                        <tr>
                            <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:5%;font-size:15px;"><%=rs.getString("id")%></td>
                            <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:15%;font-size:15px;"><%=rs.getString("tendername")%></td>
                            <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:50%;font-size:15px;"><%=rs.getString("description")%></td>
                            <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:10%;font-size:15px;"><%=rs.getString("filename")%></td>
                            <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:10%;font-size:15px;"><%=rs.getString("posteddate")%></td>
                                    <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:10%;font-size:15px;">
                                        <a target="blank" href="<%=request.getContextPath()+"/uploadfiles/"+rs.getString("filename") %>">
                                            Download
                                        </a>
                                    </td>
                                     
                           </tr>
                        
                        
                        
                        <%
                        }
                        %>
      
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

