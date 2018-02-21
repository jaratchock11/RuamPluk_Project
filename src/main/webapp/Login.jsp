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
        <link href="css/loginCSS.css" rel="stylesheet">
       <link href="css/button.css" rel="stylesheet">
        <link href="css/navbarCSS.css" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Mitr' rel='stylesheet'>
     
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Login</title>
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
            <br><br><br><br><br><br>
        <form action="${pageContext.servletContext.contextPath}/LoginServlet" method="post">
        
        
        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100">
                    <form class="login100-form validate-form">
                        <span class="login100-form-title p-b-26">
                            Ruampluk
                            <img src="https://www.picz.in.th/images/2018/02/20/1235.png">
                        </span>
                        <span class="login100-form-title p-b-48">
                            <i class="zmdi zmdi-font"></i>
                        </span>

                        <div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
                            <input class="input100" type="text" name="userName">
                            <span class="focus-input100" data-placeholder="Username"></span>
                        </div>

                        <div class="wrap-input100 validate-input" data-validate="Enter password">
                            <span class="btn-show-pass">
                                <i class="zmdi zmdi-eye"></i>
                            </span>
                            <input class="input100" type="password" name="userPass">
                            <span class="focus-input100" data-placeholder="Password"></span>
                        </div>

                        <div class="container-login100-form-btn">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button type="submit" class="login100-form-btn">
                                    Login
                                </button>
                            </div>
                        </div>

                        <div class="text-center p-t-115">
                            <span class="txt1">
                                Don’t have an account?
                            </span>

                            <a class="txt2" href="#">
                                Sign Up
                            </a>
                        </div>
                
                </div>
            </div>
        </div>
        

        
        </form>
              
         
    </body>
</html>
