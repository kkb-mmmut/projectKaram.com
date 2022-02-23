<%-- 
    Document   : EProcurement
    Created on : 3 Aug, 2019, 3:44:35 PM
    Author     : KamelshToday
    Page       : Contact us
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/style.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Procurement</title>
        <script src="js/slider.js" type="text/javascript"></script>
         <script src="js/scrollup.js"></script>
        <link rel="stylesheet" href="css/scrollup.css">
    </head>
    <body onload="moveSlider()"background="images/karam.jpg" style="background-size:cover;background-attachment: fixed;">
        <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button> 
        
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
                     <li><a href="index.jsp">Home</a></li>
                     <li><a href="aboutus.jsp">About Us</a></li>
                     <li><a href="registration.jsp">Registration</a></li>
                     <li><a href="login.jsp">Login</a></li>
                     <li><a href="contactus.jsp">Contact Us</a></li>
                 </ul>
             </div>
             <div id="slider">
                 <img id="slide" width="1000px" height="250px"/>
             </div>
            <div id="parent">
                <div id="left">
                    
                    
                     <div id="notification">
                        <center> <img src="images/bell.png" height="100px" width="100px"/></center>
                    </div>
                    <div id="news"> 
                    <marquee direction="up" height="500px" onmouseover="stop()" onmouseout="start()" scrollamount="5">
                    
                    <%
                        DbManager dm=new DbManager();
                        ResultSet rs=dm.selectQuery("select * from notification");
                        while(rs.next())
                        {
                           
                        %>
                        
                        <span style="text-align: center;">
                            <p style="color:white;font-family: consolas;font-size: 20px;"><%=rs.getString("notificationtext")%></p>
                            <p><%=rs.getString("posteddate")%></p>
                        </span>
                         <% 
                        }
                        %>
                </marquee>
                    </div>
                    
                    
                    
                </div>
                <div id="main">
                    <img src="images/contactus2.png" height="180px"width="180px"style="margin:10px auto;cursor:not-allowed;"/>
                     
                    <form action="generalcode/enquirycode.jsp" method="post">
                        
                        <h1 style="margin-top: -20px;margin-bottom: -10px;text-align:center;font-size: 50px;font-family: Impact, sans-serif;color: white;text-shadow: 2px 2px 5px red;">
                            Enquiry Form 
                        </h1>
                        <br/> 
                        <table style="margin:0 auto;width:70%"cellspacing="10px">
                            <tr>
                                 
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">Enter Name</td>
                                <td>
                                    <input type="text" name="name" required style="background-color:lightseagreen;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 40px;width:100%;font-family: consolas;font-size:20px;color: white;"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">Select Gender</td>
                                <td style="resize: none;color: white;background-color:lightseagreen;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 40px;width:100%;font-family: consolas;font-size:20px;">
                                    <input type="radio" name="gender" value="Male"/>Male
                                    <input type="radio" name="gender" value="Female"/>Female
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">Enter Address</td>
                                <td>
                                    <textarea name="address" required style="background-color:lightseagreen;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 40px;width:98.4%;font-family: consolas;font-size:20px;color: white;"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">Enter contact No.</td>
                                <td>
                                    <input type="text" name="contactno" required style="background-color:lightseagreen;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 40px;width:100%;font-family: consolas;font-size:20px;color: white;"/> 
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">Enter E-mail Address</td>
                                <td>
                                    <input type="email" name="emailaddress" required style="background-color:lightseagreen;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 40px;width:100%;font-family: consolas;font-size:20px;color: white;"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="height: 40px;width:50%;font-family: consolas;font-size:20px;">Enter enquiry text</td>
                                <td>
                                    <textarea name="enquirytext" required style="background-color:lightseagreen;outline:none;border:none;box-shadow:5px 2px 5px 5px black;height: 40px;width:98.4%;font-family: consolas;font-size:20px;color: white;"></textarea>
                                </td>
                            </tr>
                            <tr>
                                
                                <td colspan="2" align="center">
                                    <input type="submit" value="Submit" style="height: 40px;border-radius: 30px;outline: none;width:40%;text-align: center;box-shadow:5px 2px 5px 5px black;font-family: consolas;font-size: 30px;cursor: pointer;"/>
                                </td>
                            </tr>
                        </table>
                     
                    </form> 
                    <img src="images/contactus.png" height="50px"width="50px"style="margin-bottom: 0px;margin-right:0px;cursor:not-allowed;"/>
                </div>                
            </div>
            <div id="footer">
 
		<div id="footer-left">
                 <div id="footerla">
		<h3 align="center">The Industry</h3><hr/>
                <ul align="left" style="font-family: consolas;margin-top:10px;"> 
                <li>Thoughts & Leadership</li>
	
		<li>Training Program</li>
	
		<li>Activities</li>
	
		<li>Good Protective Equipment</li>
	
		<li>Quality Service</li>
	
                <li>Contact Me<br/>Mo.No.-8112740805</li>
                </ul>
                 </div>
		</div>
 
		<div id="footer-center">
                    <div id="footerca">
                        <h3 align="center" >Quick Links</h3><hr/>
                        <ul style="margin-top: 15; font-family: consolas;" type="square">
                            <li style="margin-top:8px;"><a href="index.jsp" style="color: white;">Home</a></li>
                            <li style="margin-top:8px;"><a href="aboutus.jsp"  style="color: white;">About Us</a></li>
                            <li style="margin-top:8px;"><a href="login.jsp"  style="color: white;">Quick Login</a></li>
                            <li style="margin-top:8px;"><a href="registration.jsp"  style="color: white;">Registration</a></li>
                            <li style="margin-top:8px;"><a href="contactus.jsp"  style="color: white;">Give Feedback</a></li>
                            
                        </ul>
                    </div>
                </div>
		<div id="footer-right">
                    <div id="footerra"> 
		 
                <h3 align="center" > Address/Location</h3>
                    <hr/>
                    <ul type="none" style="margin-top: 15px; font-family: consolas;"> 
                        <li>Vill& Post-Saheri</li>
                    <li>Distt.& Tashil-Ghazipur</li>
                    <li>Pin-code: 233302</li>
                    <li>STATE-<br/>
                        Northern-Uttarpradesh</li>
                    <li style="text-align: center;"><a style="font-size: 25px;color:yellow;" href="https://www.google.com/maps/place/Ghazipur,+Uttar+Pradesh+233001/@25.5746521,83.553686,14z/data=!3m1!4b1!4m5!3m4!1s0x3991ff78350bdfbf:0xc4a72451c0503586!8m2!3d25.5877901!4d83.5783078" target="blank">View on Map</a></li>
                    </ul>
                    
                    </div>
		</div>
 <div id="copyright">
                 
                 &copy; Copyright to SoftPro India::Developed & Managed by Kamlesh Bind...
                 
             </div>
		</div>            
        </div>
    </body>
</html>

