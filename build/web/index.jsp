<%-- 
    Document   : EProcurement
    Created on : 3 Aug, 2019, 3:44:35 PM
    Author     : KamelshToday
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
        <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/main.css">
	<script src="js/kam/modernizr-2.6.2.min.js"></script>
        <script src="js/scrollup.js"></script>
        <link rel="stylesheet" href="css/scrollup.css">
          
    </head>
    <body class="demo" onload="moveSlider()" background="images/karam.jpg" style="background-size:cover;background-attachment: fixed;">
   <button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
           
	 
  <div id="loader-wrapper">
			<div id="loader"></div>

			<div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>

		</div>

		<div id="content"> 
        
        
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
                    
                    <h1 align="center" style="font-family: Impact, sans-serif;color: white;font-stretch: normal;text-shadow: 2px 2px 5px red;"><font color="white">Introduction</font></h1>    
                    <p style="padding-left: 10px;padding-right: 10px;font-family: consolas;text-align: justify;">
                        e-Procurement or electronic procurement refers to the process of purchase and sale
of goods or services through electronic methods, primarily the Internet. It is an alternative to the
manual process of procurement, and is certainly superior to the latter in many respects. Organizations
are increasingly opting for e-Procurement platforms, realizing its potential to curb irregularities and
unnecessary costs.</p>
                    <h1 align="left" style="font-family: Impact, sans-serif;color: white;font-stretch: normal;text-shadow: 2px 2px 5px red;"><font color="white">Client Information</font></h1>
                    <p style="padding-left: 10px;padding-right: 10px;font-family: consolas;text-align: justify;">
                    KARAM is India’s leading Personal Protective Equipment Manufacturing
enterprise, and is rated as one of the finest Indian companies providing world class PPE. KARAM
ranks as the number one Company in the field of Personal Safety in the country, and as one of the
top ten Fall Protection manufacturing companies in the World. Our product range includes
Personal Protective Equipment like safety helmets, safety eye-wear, hearing protection, face
protection, hand protection, protective work wear, safety shoes, and a vast range of Fall
Protection Equipment. Besides these, engineered safety solutions like anchorage systems,
specialized rope access, evacuation and rescue products, and confined space entry egress systems
also form a part of KARAM’s Product Portfolio</p>
                    <h1 align="left" style="font-family: Impact, sans-serif;color: white;font-stretch: normal;text-shadow: 2px 2px 5px red;"><font color="white">Existing System</font></h1>
<p style="padding-left: 10px;padding-right: 10px;font-family: consolas;text-align: justify;">
    The existing system in the Company was based on physical registration of the
vendors for the announced tender and the bidding was also very time consuming for the company. This
was ineffective as down time was very high. The Company wants to implement an effective software
solution to manage the tender and vendors, their bidding detail and choosing the vendors on the
package or non-package based.   
</p>    
                    
                    
                </div>                
            </div>
           
             
<div id="maingallary">  
    <div id="gallheading">
            GALLERY
    </div>
    <div id="gallphotos">
        
        
         
<div class="container">
    <img src="images/kamlesh.jpg" alt="" height="405px" width="310px">
   <span class="title">Er.KAMLESH KUMAR BIND</span>
   <span class="text">Founder of this company & developer of this webapplication.<br/>Specialist in HTML,CSS,JAVASCRIPT,JAVA,DATABASE AND C.</span>
</div>
<div class="container">
  <img src="images/ajaysir.jpg" alt="" height="195px" width="310px">
  <span class="title">Er.Ajay Chaudhary</span>
  <span class="text">He is the founder of the Softpro India.Due to his great effort his company <br/>is now one of the best reputed companies. </span>
</div>
<div class="container">
  <img src="images/yashi.jpg" alt="" height="195px" width="310px">
   <span class="title">CEO.Yashi Asthana</span>
  <span class="text">She is the Chief Executive Officer of the SoftPro India.</span>
</div>
<div class="container">
  <img src="images/brijesh.jpg" alt="" height="195px" width="310px">
   <span class="title">Er.Brijesh Mishra</span>
  <span class="text">He is the Senior Manager of the Softpro India.He has almost all the knowledge of Programming languages.</span>
</div>
<div class="container">
  <img src="images/rohit.jpg" alt="" height="195px" width="310px">
   <span class="title">Er.Rohit Kumar</span>
  <span class="text">Project Manger of the Softpro India.His blood contains HTML,CSS and Java Script.</span>
</div>
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
                        <ul style="margin-top:15px; font-family: consolas;" type="square">
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
                </div>
         <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	 <script>window.jQuery || document.write('<script src="js/kam/jquery-1.9.1.min.js"></script> 
  
	 <script src="js/main.js"></script>
     </body>
</html>
