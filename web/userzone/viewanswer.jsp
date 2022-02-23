 <%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%-- 
    Document   : userhome
    Created on : 6 Aug, 2019, 5:11:02 PM
    Author     : Kamlesh Kumar Bind
    Project    : e-Procurement
--%>
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
                
                <br/> 
                        <h1 style="text-align:center;font-size: 50px;font-family: Impact, sans-serif;color: white;text-shadow: 2px 2px 5px red;">
                            Discussion Forum
                        </h1>
                        <br/> 
                        <table style="margin:0 auto;width:90%"cellspacing="10px"  >
                            <tr>
                                 <th style="background-color:lightseagreen;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:50%;font-size:20px;color: white;">Answer</th>                               
                               <th style="background-color:lightseagreen;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:25%;font-size:20px;color: white;">Answered By</th>
                               <th style="background-color:lightseagreen;font-family: Impact, sans-serif;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:40px;width:25%;font-size:20px;color: white;">Posted Date</th>
                            </tr>
                            <%
                                String qid=request.getParameter("qid");
                                DbManager dm=new DbManager();
                                ResultSet rs=dm.selectQuery("select * from answer where qid='"+qid+"'");
                                while(rs.next())
                                {
                            %>
                            
                            <tr>
                                <th style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:50%;font-size:15px;"><%=rs.getString("answertext")%></th>
                               
                               <th style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:25%;font-size:15px;"><%=rs.getString("answeredby")%></th>
                               <th style="background-color:lightgoldenrodyellow;font-family:cursive;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:30px;width:25%;font-size:15px;"><%=rs.getString("posteddate")%></th>
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
