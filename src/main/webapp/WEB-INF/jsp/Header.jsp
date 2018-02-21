<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="loginOrLogout" value="${sessionScope.user==null ? 'LoginServlet' : 'LogoutServlet'}"/>
<table style="background-color: red">
    <tr>
        <td></td>
<!--        <td><a href="${pageContext.servletContext.contextPath}/home.jsp">
                <img src="${pageContext.servletContext.contextPath}/logo.png" width="100px"></a></td>-->
        <td></td>
        <td style="color: white">${param.title}</td>
        <td>
           
        </td>
        <td style="color: white">
            <!--<a href="${loginOrLogout}" title="${loginOrLogout}">-->
                <!--<img src="${pageContext.servletContext.contextPath}/user.png" width="100px"></a><br>-->
            Username <c:out value="${user.userName}" default="Guest"/>
        </td>
        <td></td>
    </tr>
</table>
