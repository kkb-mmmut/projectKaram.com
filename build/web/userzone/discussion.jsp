<%-- 
    Document   : discussion
    Created on : 8 Aug, 2019, 1:38:03 PM     
    Author     : Kamlesh Kumar Bind
    Project    :e-Procurement userzone
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
                <img src="images/discussion.png" height="150px"width="200px" style="margin-left:40%;cursor:not-allowed;"/>
               
                <form action="usercode/questioncode.jsp" method="post">
                       
                        <br/> 
                        <h1 style="text-align:center;margin-top: -15px;font-size: 50px;font-family: Impact, sans-serif;color: white;text-shadow: 2px 2px 5px red;">
                            Discussion Forum
                        </h1>
                          
                        <table style="margin:0 auto;width:70%"cellspacing="10px">
                            <tr>
                                 
                                <td style="height:70px;width:30%;font-family: consolas;font-size:20px;">Enter Question</td>
                                <td>
                                    <textarea name="questiontext" required style="background-color:lightseagreen; resize: none;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:70px;width:98.4%;font-family: consolas;font-size:20px;color: white;"></textarea>
                               </td>
                            </tr>
                             <tr>
                                
                                <td colspan="2">
                                    <input type="submit" value="Post Question" style="height: 40px;width:100%;box-shadow:5px 2px 5px 5px black;font-family: consolas;font-size: 30px;cursor: pointer;"/>
                                </td>
                            </tr>
                        </table>
                     
                    </form>  <br/><br/>    
                      
                        <table style="margin:0 auto;width:90%"cellspacing="10px">
                            <tr>
                                 
                                <th style="background-color:lightseagreen;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:60%;font-size:20px;color: white;">Question</th>
                                <th style="background-color:lightseagreen;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:20%;font-size:20px;color: white;">Asked By</th>
                                <th style="background-color:lightseagreen;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:20%;font-size:20px;color: white;">Posted Date</th>
                                <th style="background-color:lightseagreen;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:20%;font-size:20px;color: white;">Post Answer</th>
                                <th style="background-color:lightseagreen;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:20%;font-size:20px;color: white;">View Answer</th>
                            </tr>
                            <%
                                DbManager dm=new DbManager();
                                ResultSet rs=dm.selectQuery("select * from question");
                                while(rs.next())
                                {
                                    
                                
                            %>
                            <tr align="center">
                                
                                <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:60%;font-size:15px;"><%=rs.getString("questiontext") %></td>
                                <td style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:20%;font-size:15px;"><%=rs.getString("askedby") %></td> 
                                <td style="background-color:lightgoldenrodyellow;font-family: cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:20%;font-size:15px;"><%=rs.getString("posteddate") %></td>
                                <td style="background-color:lightgoldenrodyellow;font-family: cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:20%;font-size:15px;"> 
                                    <a href="postanswer.jsp?qid=<%=rs.getString("qid")%>">Post</a></td>
                                <td style="background-color:lightgoldenrodyellow;font-family: cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:20%;font-size:15px;"> 
                                    <a href="viewanswer.jsp?qid=<%=rs.getString("qid")%>">View</a></td>
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
