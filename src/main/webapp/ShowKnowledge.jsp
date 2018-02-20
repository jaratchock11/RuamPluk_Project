
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
        <link href='https://fonts.googleapis.com/css?family=Mitr' rel='stylesheet'>
    </head>
    <body>
         <div class="navbar">
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
        </div>
        <br><br>
<!--       <form action="HomeServlet" method="post">
       
           <input type="submit" title="Home" value="Home"><hr>
        </form>-->
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
                        <!--<p><button class="button">JOIN</button></p>-->
                    </div>
                </div>
            </div>
           
                        
                        
                        
           
              
<!--            
            <td><center><%=c.getKnowName()%></center></td>
            <td><%=c.getKnowDesc()%></td>
            <td><center><img src="<%=c.getKnowPic()%>" width="400" height="300"></center></td>-->
            
        
         <%}%>    
       
        <%}else{%>
        <%=request.getAttribute("error")%>
        <%}%>
            
    </body>
    <div class="footer">
                        <p><br><br></p>
                    </div>
</html>
