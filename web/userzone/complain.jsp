 <%-- 
    Document   : userhome
    Created on : 6 Aug, 2019, 5:11:02 PM
    Author     : Kamlesh Kumar Bind
    Project Page name: complaint
    Project Name:E-Procurement
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
                <img src="images/complain.png" height="200px"width="250px" style="margin-left:37%; margin-top:20px;cursor:not-allowed;"/>
               
                 <form action="usercode/complaincode.jsp" method="post">
                       
                        <h1 style="text-align:center;margin-top:-10px;font-size: 50px;font-family: Impact, sans-serif;color: white;text-shadow: 2px 2px 5px red;">
                            Complain Log
                        </h1>
                        <br/> 
                        <table style="margin:0 auto;width:70%"cellspacing="10px">
                            <tr>
                                 
                                <td style="height:70px;width:35%;font-family: consolas;font-size:20px;">Enter Subject</td>
                                <td>
                                    <textarea name="subject" required style="background-color:lightseagreen;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height:70px;width:98.4%;font-family: consolas;font-size:20px;color: white;"></textarea>
                               </td>
                            </tr>
                            
                            <tr>
                                <td style="height: 100px;width:35%;font-family: consolas;font-size:20px;">Enter Complain Text</td>
                                <td>
                                    <textarea name="complaintext" required style="background-color:lightseagreen;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 100px;width:98.4%;font-family: consolas;font-size:20px;color: white;"></textarea>
                                </td>
                            </tr>
                            
                            <tr>
                                
                                <td colspan="2">
                                    <input type="submit" value="Submit" style="height: 40px;width:100%;box-shadow:5px 2px 5px 5px black;font-family: consolas;font-size: 30px;cursor: pointer;"/>
                                </td>
                            </tr>
                        </table>
                     
                    </form>      
                
                
                
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
