<%-- 
    Document   : Login
    Created on : Feb 18, 2018, 1:04:16 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <form action="${pageContext.servletContext.contextPath}/LoginServlet" method="post">
            <center><h1>Ruam Pluk</h1></center><br><br>
                
            <center>
                <div>
                    Username : 
                    <input type="text" name="userName"  placeholder="Username">
                </div>
            </center>    
            <br>
            <center>
                <div>
                   Password :
                    <input type="password" name="userPass" placeholder="Password">
                </div>
            </center>    
            <br>    
            <center> <button type="submit">Login</button> </center>
                <input type="hidden" name="target" value="${param.target}"/>
            </form>    
    </body>
</html>
