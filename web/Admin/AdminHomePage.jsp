<%-- 
    Document   : AdminHomePage
    Created on : 18 Jan, 2024, 11:34:12 AM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
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
        <%
         
          String s="select sum(request_amount) as amount from tbl_workrequest";
          ResultSet rs=con.selectCommand(s);
          rs.next();
          int total_amt=Integer.parseInt(rs.getString("amount"));
           double perc=total_amt*0.10;
         %>
         <br>
         COMMISSION : <%out.println(perc);%><br>
         <a href="ViewComplaint.jsp">View Complaint</a><br>
    </body>
</html>
