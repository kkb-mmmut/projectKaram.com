<%-- 
    Document   : uploadtenders
    Created on : 10 Aug, 2019, 12:30:27 PM
    Author     : Kamlesh Kumar Bind
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
            <div id="parent">
                <form action="../upload" method="post" enctype="multipart/form-data"><br/> 
                     <h1 style="text-align:center;margin-top:-10px;font-size: 50px;font-family: Impact, sans-serif;color: white;text-shadow: 2px 2px 5px red;">
                            Upload Tenders
                        </h1>
                         
                        <table style="margin:0 auto;width:70%;"cellspacing="10px">
                             <tr>
                                <td style="height: 40px;width:35%;font-family: consolas;font-size:20px;">Tender Name</td>
                                <td>
                                    <input type="text" name="tendername" required style="border-radius: 30px;padding:20px;background-color:#51BCA4;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:98.4%;font-family: consolas;font-size:20px;color: white;"> 
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 100px;width:35%;font-family: consolas;font-size:20px;">Description</td>
                                <td>
                                    <textarea name="description" required style="border-radius: 30px;padding:20px;background-color:#51BCA4;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 100px;width:98.4%;font-family: consolas;font-size:20px;color: white;"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 40px;width:35%;font-family: consolas;font-size:20px;">Upload File</td>
                                <td>
                                    <input type="file" name="file" required style="border-radius: 30px;padding-left:20px;padding-bottom: 5px;padding-top: 5px;background-color:#51BCA4;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:98.4%;font-family: consolas;font-size:20px;color: white;"> 
                                </td>
                            </tr>
                            
                            <tr>
                                <td>&nbsp;</td>
                                <td   style="text-align: center;">
                                    <input type="submit" value="Upload Tender" style="height: 40px;width:60%;box-shadow:5px 2px 5px 5px black;border-radius:20px;outline:none;font-family: consolas;font-size: 30px;cursor: pointer;"/>
                                </td>
                            </tr>
                        </table>
                        
                    </form>
                <br/>
                <table style="margin:0 auto;width: 90%">
                    <tr>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">Id</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">Tender Name</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">Description</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">File Name</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">Posted Date</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">Download</th>
                        <th style="background-color:#F75D59;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:auto;font-size:15px;color: white;">Delete</th>
                        
                    </tr>
                    <td>&nbsp;</td>
                    <%
                        DbManager db=new DbManager();
                        String query="select * from uploadtender";
                        ResultSet rs=db.selectQuery(query);
                        while(rs.next())
                        {
                         
                        %>
                        <tr>
                            <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"><%=rs.getString("id")%></td>
                            <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"><%=rs.getString("tendername")%></td>
                            <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"><%=rs.getString("description")%></td>
                            <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"><%=rs.getString("filename")%></td>
                            <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"><%=rs.getString("posteddate")%></td>
                                    <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;"> 
                                        <a target="blank" href="<%=request.getContextPath()+"/uploadfiles/"+rs.getString("filename") %>">
                                            Download
                                        </a>
                                    </td>
                                    <td style="background-color:lightseagreen;font-family:consolas;border-radius: 20px;padding:5px;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:20px;width:auto;font-size:10px;color: white;">
                                        <a href="admincode/deltender.jsp?id=<%=rs.getString("id")%>">
                                            Delete
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

 