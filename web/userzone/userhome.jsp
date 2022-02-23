<%-- 
    Document   : userhome
    Created on : 6 Aug, 2019, 5:11:02 PM
    Author     : Kamlesh Kumar Bind
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
            <div id="parent" style="padding-bottom: 50px;">
                
                <form action="../upload" method="post" enctype="multipart/form-data"><br/> 
                     <h1 style="text-align:center;margin-top:-10px;font-size: 50px;font-family: Impact, sans-serif;color: white;text-shadow: 2px 2px 5px red;">
                           Instructions & Limitation 
                        </h1>
                    <div id="instruction" style="height:auto;font-size: 25px;width:950px;margin-top:50px;margin-left: 23px;color: white; font-family: consolas;border-radius: 50px;text-align: justify;border:3px solid teal; background-color:rgba(0,0,0,0.3)">
                        <br/>
                        <ul type=" " style="padding-right:10px;">
                            <li>
                                 
                                <b>The Companies Act, 2013 </b>passed by the Parliament has received the assent of the President of India on 29th August, 2013.
                                         The Act consolidates and amends the law relating to companies. The Companies Act, 2013 has been notified in the Official Gazette on 30th August, 2013.
                                         Some of the provisions of the Act have been implemented by a notification published on 12th September, 2013. The provisions of Companies Act, 1956 is still in force
                                
                                
                            </li>
                            <br/>
                            <li>
                                <b>Strong and Positive Leadership.</b>
                                  Good companies have leaders that are decisive when it comes to steering the organization's course. They know how to build strong relationships and provide open 
                                  communication with their employees. They motivate their team and hold everyone to high standards of responsibility and accountability.
                                
                                
                            </li>
                            <br/>
                            <li>
                                <b>Stay Focused on Strengths.</b>
                                   One of the features of a good business is the ability to focus on the main thing for which they were created. The opportunity to expand and include 
                                   new product offerings may develop, but the focus should always remain on providing your primary product or service without sacrificing quality and customer service. 
                                   While product offerings can increase they should always be within your niche.
                                
                                
                            </li>
                            <br/>
                            <li>
                                <b> Inspire a Positive Corporate Culture</b>.
                                Also among the qualities of a good business is the motivation to do more than simply achieve financial success. Whether owners and their management teams are fueled by 
                                the love of business or the love of the product/service they are providing, they need to get enough out of the business to want to continue through tough times. This inspiration 
                                should be passed on to employees and encouraged as part of the company's corporate culture.
                                
                                
                            </li>
                            <br/>
                            <li>
                                <b> Encourage a Healthy Work Environment.</b>
                                    A healthy company work environment is another important characteristic of a successful business. Workers should be suited to the jobs they do and policies should be designed to 
                                    motivate them to achieve success. Businesses need to commit resources and time to training their employees, as well any independent contractors with whom they work. Because of the
                                    changing nature of business, continual training that is strongly rooted in the organization's business plan is essential.
                                
                                
                            </li>
                            <br/>
                            <li>
                                
                                <b> Provide Excellent Customer Service</b>
                                    No matter how many of these good company qualities your business exhibits, if you don't provide your customers with excellent service, 
                                    you may not be able to maintain a customer base. Be sure to pay attention to customer concerns and handle concerns quickly and fairly.
                                    It is also important to understand customers so you can anticipate and fulfill their needs. Customers that feel appreciated and cared for
                                    will stick with you and continue to utilize your services.
                                
                            </li>
                            
                            
                            
                        </ul>
                        
                        
                    </div>
                        
                  
                  
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
