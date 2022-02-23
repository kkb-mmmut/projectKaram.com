<%-- 
    Document   : changepassword
    Created on : 7 Aug, 2019, 2:55:39 PM
    Author     : dell
    Project     : E-Procurement
     Document for changing the password!
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
                <img src="images/key.png" height="180px"width="200px" style="margin-left:40%;cursor:not-allowed;"/>
                <form action="usercode/changepasswordcode.jsp" method="post"><br/><br/>
                        <h2 style="text-align: center;margin-top: -10px;font-size:50px;font-family: Impact, sans-serif;color:white;font-stretch: normal;text-shadow: 2px 2px 5px red;">
                            Change Password 
                        </h2>
                        <table style="margin:0 auto;width:60%;margin-top:5%;font-family:consolas;/*box-shadow: 5px 5px 5px black;*/ "cellspacing="10px">
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">Enter Old Password</td>
                                <td>
                                    <input type="password" name="oldpassword" required style="background-color:lightseagreen;color: white;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 40px;width:100%;font-family: consolas;font-size:20px;"/>
                                </td>
                            </tr>
                            
                             
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;"> Enter New Password</td>
                                <td>
                                    <input type="password" name="newpassword" required style="background-color:lightseagreen;color: white;outline:none;border: none;box-shadow:5px 2px 5px 5px black;height: 40px;width:100%;font-family: consolas;font-size:20px;">
                                </td>
                            </tr>
                             
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;"> Confirm Password</td>
                                <td>
                                    <input type="password" name="confirmpassword" required style="background-color:lightseagreen;color: white;outline:none;border: none;box-shadow:5px 2px 5px 5px black;height: 40px;width:100%;font-family: consolas;font-size:20px;">
                                </td>
                            </tr>
                             
                            
                            <tr>
                                 
                                <td align="center" colspan="2">
                                    <input type="submit" value="Change Password" style="height: 40px;width:100%;box-shadow:5px 2px 5px 5px black;font-family: consolas;font-size: 30px; cursor: pointer;"/>
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

