<%-- 
    Document   : MyProfile
    Created on : 5 Jan, 2024, 4:27:24 PM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
    </head>
    <body>
        <%
          String selqry = "select*from tbl_user where user_id='"+session.getAttribute("uid")+"'";  
          ResultSet rs1 = con.selectCommand(selqry);
          if(rs1.next())
          {
        %>
        <form method="post">
        <table border="3" align="center">
               <tr>
                    <td colspan="2" align="right"><img src="../Assets/Files/UserPhoto/<%=rs1.getString("user_photo")%>" height="120" width="120"</td>
               </tr>
                <tr>
                    <td>Name</td>
                    <td><%=rs1.getString("user_name")%>
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><%=rs1.getString("user_contact")%>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><%=rs1.getString("user_email")%>
                    </td>
                </tr>
                
                
                 <tr><td>Address</td>
                     <td><%=rs1.getString("user_address")%>
                 </tr>
        <%
          }
        %> 
        </table>
        </form>
    </body>
</html>
