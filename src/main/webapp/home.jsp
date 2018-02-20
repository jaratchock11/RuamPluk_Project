
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link href="css/button.css" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Mitr' rel='stylesheet'>
        <title>RuamPluk Home</title>
    </head>
    <c:set var="loginOrLogout" value="${sessionScope.user==null ? 'LoginServlet' : 'LogoutServlet'}"/>
    <body>
        
         <jsp:include page="/WEB-INF/jsp/Header.jsp?title=:: H o m e ::"/>
        <div class="navbar">
            <button class="tablink" onclick="openCity('HOME', this, 'red')" id="defaultOpen">HOME</button>
             <form action="KnowledgeServlet" method="post">
                 <button class="tablink" type="submit" onclick="openCity('KNOWLEDGE', this, 'green')">KNOWLEDGE</button>
             </form>
            <button class="tablink" onclick="openCity('CAMPAIGN', this, 'blue')">CAMPAIGN</button>
            <form action="LocationServlet" method="post">
            <button class="tablink" onclick="openCity('LOCATION', this, 'orange')">LOCATION</button>
            </form>
            <button class="tablink" onclick="openCity('PLANING', this, 'orange')">PLANTING</button>
        </div>
         <form action="KnowledgeServlet" method="post">
            <br><br>
            <center><h1>RuamPluk</h1></center>
            <center><button  type="submit" width="80px"><b>Knowledge</b></button></center>
                         
        </form>
        
         <form action="${loginOrLogout}" method="post">
            <br><br>
            
           
            <center>
                <button  type="submit" width="80px"><b>${loginOrLogout}</b></button></center>
                         
        </form>
                
                 <div class="footer">
                        <p><br><br></p>
                    </div>
        
     <!--<center><p> <a href="${loginOrLogout}">${loginOrLogout}</a></p></center>--> 
         <!--<a> for loginorlogout-->
    </body>
</html>
