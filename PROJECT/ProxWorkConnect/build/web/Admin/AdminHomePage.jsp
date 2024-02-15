<%-- 
    Document   : AdminHomePage
    Created on : 18 Jan, 2024, 11:34:12 AM
    Author     : abhij
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin HomePage</title>
    </head>
    <body>
        <h1>Hello <%=session.getAttribute("aname")%></h1>
        <a href="AdminChangePassword.jsp">Change Password</a><br>
        
    </body>
</html>
