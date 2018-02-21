
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
            <h2 style="color: white">New Campaign</h2>
            <div class="row">
                <div class="column">
                    <div class="card">
                        <img src="http://www.marketingoops.com/wp-content/uploads/2016/05/joey4.jpg" alt="camp1" style="width:100%">
                        <div class="container">
                            <h2>Pluk Loey (ปลูกเลย)</h2>
                            <p class="title">Duration : 30 พฤษภาคม พ.ศ.2561</p>
                            <p>Location : บ้าน นาก้า อำเภอ เวียงสาน จังหวัด น่าน</p>
                            <p><button class="button">JOIN</button></p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="column">
                        <div class="card">
                            <img src="http://www.forest.go.th/orip/images/stories/NEWS_Den/18-5-55_Ong%20ka%20mon%20tee_Keaw%20noi/25.JPG" alt="camp1" style="width:100%; height: 300px">
                            <div class="container">
                                <h2>โครงการปลูกป่าชายเลนเชิงอนุรักษ์</h2>
                                <p class="title">Duration : 19-20 พฤศจิกายน พ.ศ.2561</p>
                                <p>Location : กลุ่มวิสาหกิจชุมชน “กลุ่มคนรักษ์คลองโคน” ตำบลคลองโคน อำเภอเมือง จังหวัดสมุทรสงคราม</p>
                                <p><button class="button">JOIN</button></p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="column">
                            <div class="card">
                                <img src="http://www.รู้จริงพลังงานไทย.com/wp-content/uploads/2016/03/%E0%B9%82%E0%B8%84%E0%B8%A3%E0%B8%87%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B8%9B%E0%B8%A5%E0%B8%B9%E0%B8%81%E0%B8%9B%E0%B9%88%E0%B8%B22.jpg" alt="camp1" style="width:100%">
                                <div class="container">
                                    <h2>โครงการปลูกป่าวังจันทร์</h2>
                                    <p class="title">Duration : 2 มีนาคม พ.ศ.25618</p>
                                    <p>Location : สถาบันปลูกป่า ปตท. อำเภอ วังจันทร์ จังหวัด ระยอง</p>
                                    <p><button class="button">JOIN</button></p>
                                </div>
                            </div>
                        </div>

                        <br>
                        <h2 style="color: white">New Knowledge</h2>
                        <div class="row">
                            <div class="column">
                                <div class="card">
                                    <img src="http://1.bp.blogspot.com/-UlJT307uOdM/T8lU4HJvs8I/AAAAAAAAAjE/FJ-dK2-BeW4/s1600/%E0%B8%AD%E0%B8%B8%E0%B8%9B%E0%B8%81%E0%B8%A3%E0%B8%93%E0%B9%8C+047+(Small).jpg" alt="camp1" style="width:100%">
                                    <div class="container">
                                        <h2>Mango (มะม่วง)</h2>
                                        <p class="title">Description : มะม่วงเป็นไม้ยืนต้นในสกุล Mangifera ซึ่งเป็นไม้ผลเมืองร้อนในวงศ์ Anacardiaceae (กลุ่มเดียวกับถั่วพิสตาชีโอและมะม่วงหิมพานต์) ชื่อวิทยาศาสตร์: Mangifera indica เป็นพืชที่มีถิ่นกำเนิดในอินเดีย</p>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="column">
                                    <div class="card">
                                        <img src="http://1.bp.blogspot.com/-FPPff3D9VuA/TzChUOxCieI/AAAAAAAAGeg/VRBbQX2qipI/s400/%E0%B8%95%E0%B9%89%E0%B8%99%E0%B8%82%E0%B8%99%E0%B8%B8%E0%B8%99.jpg" alt="camp1" style="width:100%">
                                        <div class="container">
                                            <h2>Jackfruit (ขนุน)</h2>
                                            <p class="title">Description : ขนุนเป็นไม้ยืนต้นขนาดใหญ่ อยู่ในวงศ์เดียวกับสาเก สูง 15-30 เมตร ลำต้นและกิ่งเมื่อมีบาดแผลจะมีน้ำยางสีขาวข้นคล้ายน้ำนมไหล ใบเดี่ยว เรียงสลับ แผ่นใบรูปรี ขนาดกว้าง 5-8 เซนติเมตร ยาว 10-15 เซนติเมตร</p>
                                            
                                           
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="column">
                                        <div class="card">
                                            <img src="http://1.bp.blogspot.com/-UlJT307uOdM/T8lU4HJvs8I/AAAAAAAAAjE/FJ-dK2-BeW4/s1600/%E0%B8%AD%E0%B8%B8%E0%B8%9B%E0%B8%81%E0%B8%A3%E0%B8%93%E0%B9%8C+047+(Small).jpg" alt="camp1" style="width:100%">
                                            <div class="container">
                                                <h2>Durian (ทุเรียน)</h2>
                                                <p class="title">Description : ทุเรียนเป็นผลไม้ที่มีกลิ่นเฉพาะตัว ซึ่งเป็นส่วนผสมของสารระเหยที่ประกอบไปด้วยเอสเทอร์ คีโตน และสารประกอบกำมะถัน บางคนบอกว่าทุเรียนมีกลิ่นหอม ในขณะที่บางคนบอกว่ามีกลิ่นเหม็นรุนแรงจนถึงขั้นสะอิดสะเอียน ทำให้มีการห้ามนำทุเรียนเข้ามาในโรงแรมและการขนส่งสาธารณะ</p>
                                                
                                             
                                                
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
