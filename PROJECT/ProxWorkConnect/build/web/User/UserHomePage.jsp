<%-- 
    Document   : HomePage
    Created on : 12 Jan, 2024, 3:14:04 PM
    Author     : abhij
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User HomePage</title>
    </head>
    <body>
        <h1>Hello <%=session.getAttribute("uname")%></h1>
        <a href="UserProfile.jsp">MyProfile</a><br>
        <a href="UserEditProfile.jsp">EditProfile</a><br>
        <a href="UserChangePassword.jsp">ChangePassword</a>
    </body>
</html>
