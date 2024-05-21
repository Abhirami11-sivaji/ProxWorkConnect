<%-- 
    Document   : Homepage
    Created on : 12 Jan, 2024, 4:07:18 PM
    Author     : abhij
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Worker HomePage</title>
    </head>
    <body>
        <h1>Hello <%=session.getAttribute("wname")%></h1>
        <a href="WorkerProfile.jsp">MyProfile</a><br>
        <a href="WorkerEditProfile.jsp">EditProfile</a><br>
        <a href="WorkerChangePassword.jsp">ChangePassword</a><br>
        <a href="WorkPost.jsp">Add Works</a><br>
        <a href="WorkPostDisplay.jsp">Uploaded Works</a><br>
        <a href="RequestAction.jsp">Requests</a><br>
         <a href="BookingAction.jsp">Bookings</a>
    </body>
</html>
