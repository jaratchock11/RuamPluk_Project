
<%@page import="com.project.model.CampaignClass"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Campaign</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/button.css" rel="stylesheet">
        <link href="css/navbarCSS.css" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Mitr' rel='stylesheet'>
    </head>
    <body>
        
         <div id="navbar">
            <img src="https://www.img.in.th/images/52e76f9dbb2d67a9bb5ab74db601c3a0.png">

            
            <a href="${pageContext.servletContext.contextPath}/HomeServlet" method="post">Home</a>
            <a>Planting</a>           
            <a href="${pageContext.servletContext.contextPath}/LocationServlet" method="post">Location</a>
         
            <a href="${pageContext.servletContext.contextPath}/KnowledgeServlet" method="post">Knowledge</a>
       
            <a href="${pageContext.servletContext.contextPath}/CampaignServlet" method="post">Campaign</a>
            
      
        </div>
<!--         <div class="navbar">
            <form action="HomeServlet" method="post">
             <button class="tablink" onclick="openCity('HOME', this, 'red')" id="defaultOpen">HOME</button>
            </form>
             
             <form action="KnowledgeServlet" method="post">
                 <button class="tablink" type="submit" onclick="openCity('KNOWLEDGE', this, 'green')">KNOWLEDGE</button>
             </form>
            <button class="tablink" onclick="openCity('CAMPAIGN', this, 'blue')">CAMPAIGN</button>
            <form action="LocationServlet" method="post">
            <button class="tablink" onclick="openCity('LOCATION', this, 'orange')">LOCATION</button>
            </form>
            <button class="tablink" onclick="openCity('PLANING', this, 'orange')">PLANTING</button>
        </div>-->
<br><br><br><br>
<!--       <form action="HomeServlet" method="post">
       
           <input type="submit" title="Home" value="Home"><hr>
        </form>-->
        <jsp:include page="/WEB-INF/jsp/Header.jsp?title=:: C a m p a i g n::"/><br>
        
         
        <form action="CampaignServlet" method="post">
            Search: <input type="text" name="search">
            <input type="submit" value="Search"><hr>
        </form>
        <%List<CampaignClass> listList = (List)request.getAttribute("message");%>
        <%if(listList.size()>0){%>
       
        <%for(CampaignClass c : listList){%>
        
            <div class="row">
            <div class="column">
                <div class="card">
                    <img src="<%=c.getCampaignPic()%>" width="100%" height="400px">
                    <div class="container">
                        <h2>Campaign Name : <%=c.getCampaignName()%></h2>
                        <p>Duration : <%=c.getCampaignDuration()%></p>
                        <p>Location : <%=c.getCampaignLocation()%></p>
                        <p>Campaign Host : <%=c.getCampaignHost()%></p>
                        <p><button class="button">JOIN</button></p>
                    </div>
                </div>
            </div>
           
                        
                        
                        
           

            
        
         <%}%>    
       
        <%}else{%>
        <%=request.getAttribute("error")%>
        <%}%>
            
    </body>
   
</html>