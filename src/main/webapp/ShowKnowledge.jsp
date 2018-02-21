
<%@page import="java.util.List"%>
<%@page import ="com.project.model.KnowledgeClass"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Knowledge</title>
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
        <br><br>
<!--       <form action="HomeServlet" method="post">
       
           <input type="submit" title="Home" value="Home"><hr>
        </form>-->
<br><br>
        <jsp:include page="/WEB-INF/jsp/Header.jsp?title=:: K n o w l e d g e ::"/><br>
        
         
        <form action="KnowledgeServlet" method="post">
            Search: <input type="text" name="search">
            <input type="submit" value="Search"><hr>
        </form>
        <%List<KnowledgeClass> listList = (List)request.getAttribute("message");%>
        <%if(listList.size()>0){%>
       
        <%for(KnowledgeClass c : listList){%>
        
            <div class="row">
            <div class="column">
                <div class="card">
                    <img src="<%=c.getKnowPic()%>" width="100%" height="400px">
                    <div class="container">
                        <h2>Tree Name : <%=c.getKnowName()%></h2>
                        <p>Description : <%=c.getKnowDesc()%></p>
  
                    </div>
                </div>
            </div>
          
        
         <%}%>    
       
        <%}else{%>
        <%=request.getAttribute("error")%>
        <%}%>
            
    </body>
   
</html>
