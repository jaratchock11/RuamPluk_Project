
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="css/button.css" rel="stylesheet">
        <link href="css/navbarCSS.css" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Mitr' rel='stylesheet'>
        <title>RuamPluk Home</title>
    </head>
    <c:set var="loginOrLogout" value="${sessionScope.user==null ? 'LoginServlet' : 'LogoutServlet'}"/>
    <body>
        <jsp:include page="/WEB-INF/jsp/Header.jsp?title=:: H o m e ::"/>
         
        <div id="navbar">
            <img src="https://www.img.in.th/images/52e76f9dbb2d67a9bb5ab74db601c3a0.png">

            <div class="dropdown">
                <form action="${loginOrLogout}" method="post">
                <button type="submit" class="dropbtn" >${loginOrLogout}
                    <i class="fa fa-caret-down"></i>
                </button>
                </form>
            </div> 
            <a href="${pageContext.servletContext.contextPath}/HomeServlet" method="post">Home</a>
            <a>Planting</a>           
            <a href="${pageContext.servletContext.contextPath}/LocationServlet" method="post">Location</a>
         
            <a href="${pageContext.servletContext.contextPath}/KnowledgeServlet" method="post">Knowledge</a>
       
            <a href="${pageContext.servletContext.contextPath}/CampaignServlet" method="post">Campaign</a>
            
      
        </div>
            <br><br>
            <jsp:include page="/WEB-INF/jsp/Header.jsp?title=:: H o m e ::"/>
            <br><br>
           
             <div class="w3-content w3-section" style="width: 100%">
            <img class="mySlides" src="https://www.picz.in.th/images/2018/02/21/motion.gif" style="width:100%">
            <br>
            <h2>New Campaign</h2>
            <div class="row">
                <div class="column">
                    <div class="card">
                        <img src="https://photos.projects-abroad.org/projects/conservation-and-environment/costa-rica-rain-forest-conservation/oscar-julie-plant-barra-honda.800.jpg" alt="camp1" style="width:100%">
                        <div class="container">
                            <h2>CAMPAIGN 1</h2>
                            <p class="title">OPEN REGISTER : 19/02/18</p>
                            <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                            <p>Some text that describes me .</p>
                            <p><button class="button">JOIN</button></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <div class="card">
                            <img src="http://teamgiving.org/wp-content/uploads/2016/10/what_is_a_good_volunteer-1.jpg" alt="camp1" style="width:100%">
                            <div class="container">
                                <h2>CAMPAIGN 2</h2>
                                <p class="title">OPEN REGISTER : 20/02/18</p>
                                <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                                <p>Some text that describes me .</p>
                                <p><button class="button">JOIN</button></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="column">
                            <div class="card">
                                <img src="http://www.yeu-international.org/images/403/3/1/1/One+Volunteer+One+Tree+Every+Year.jpg" alt="camp1" style="width:100%">
                                <div class="container">
                                    <h2>CAMPAIGN 3</h2>
                                    <p class="title">OPEN REGISTER : 21/02/18</p>
                                    <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                                    <p>Some text that describes me .</p>
                                    <p><button class="button">JOIN</button></p>
                                </div>
                            </div>
                        </div>

                        <br>
                        <h2>New Knowledge</h2>
                        <div class="row">
                            <div class="column">
                                <div class="card">
                                    <img src="https://photos.projects-abroad.org/projects/conservation-and-environment/costa-rica-rain-forest-conservation/oscar-julie-plant-barra-honda.800.jpg" alt="camp1" style="width:100%">
                                    <div class="container">
                                        <h2>CAMPAIGN 1</h2>
                                        <p class="title">OPEN REGISTER : 19/02/18</p>
                                        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                                        <p>Some text that describes me .</p>
                                        <p><button class="button">JOIN</button></p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="column">
                                    <div class="card">
                                        <img src="http://teamgiving.org/wp-content/uploads/2016/10/what_is_a_good_volunteer-1.jpg" alt="camp1" style="width:100%">
                                        <div class="container">
                                            <h2>CAMPAIGN 2</h2>
                                            <p class="title">OPEN REGISTER : 20/02/18</p>
                                            <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                                            <p>Some text that describes me .</p>
                                            <p><button class="button">JOIN</button></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="column">
                                        <div class="card">
                                            <img src="http://www.yeu-international.org/images/403/3/1/1/One+Volunteer+One+Tree+Every+Year.jpg" alt="camp1" style="width:100%">
                                            <div class="container">
                                                <h2>CAMPAIGN 3</h2>
                                                <p class="title">OPEN REGISTER : 21/02/18</p>
                                                <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                                                <p>Some text that describes me .</p>
                                                <p><button class="button">JOIN</button></p>
                                            </div>
                                        </div>
                                    </div>



                                </div>
<!--         <div class="navbar">  old navbar
             <form action="HomeServlet" method="post">
            <button class="tablink" onclick="openCity('HOME', this, 'red')" id="defaultOpen">HOME</button>
             </form>
             <form action="KnowledgeServlet" method="post">
                 <button class="tablink" type="submit" onclick="openCity('KNOWLEDGE', this, 'green')">KNOWLEDGE</button>
             </form>
            
             <form action="CampaignServlet" method="post">
            <button class="tablink" onclick="openCity('CAMPAIGN', this, 'blue')">CAMPAIGN</button>
             </form>
            
            <form action="LocationServlet" method="post">
            <button class="tablink" onclick="openCity('LOCATION', this, 'orange')">LOCATION</button>
            </form>
            
            <button class="tablink" onclick="openCity('PLANING', this, 'orange')">PLANTING</button>
        </div>-->
       
        
<!--         <form action="${loginOrLogout}" method="post">    old login button
            <br><br>
            <center>
                <button  type="submit" width="80px"><b>${loginOrLogout}</b></button></center>
                         
        </form>--> 
                
                 
        
     <!--<center><p> <a href="${loginOrLogout}">${loginOrLogout}</a></p></center>--> 
         <!--<a> for loginorlogout-->
    </body>
</html>
