<%-- 
    Document   : EditProfile
    Created on : 5 Jan, 2024, 4:28:48 PM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>UserEditProfile</title>
    </head>
    <body>
        <%
          if(request.getParameter("update")!=null) 
           {
                    String upqry = "update tbl_user set user_name = '"+request.getParameter("name")+"',user_contact = '"+request.getParameter("contact")+"',user_email = '"+request.getParameter("email")+"',user_address = '"+request.getParameter("address")+"'where user_id = '"+session.getAttribute("uid")+"'";
                    con.executeCommand(upqry);
                   response.sendRedirect("UserEditProfile.jsp");    
           } 
             String editname="";
             String editcontact="";
             String editemail="";
             String editaddress="";
             
            String sel = "select*from tbl_user where user_id ='"+session.getAttribute("uid")+"'";
            ResultSet rs1 = con.selectCommand(sel);
            rs1.next();
            editname = rs1.getString("user_name");
            editcontact = rs1.getString("user_contact");
            editemail = rs1.getString("user_email");
            editaddress = rs1.getString("user_address");
                        
        %>
             
        <form method="post">
        <table border="3" align="center">
                <tr>
                    <td>Name</td>
                    <td>
                        <input required type="text" name="name"  value="<%=editname%>" placeholder="Enter Name" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$">
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <input required type="text" name="contact" value="<%=editcontact%>"  placeholder="Enter Contact No" title="Phone number with 7-9 and remaining 9 digit with 0-9" pattern="[7-9]{1}[0-9]{9}">
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input required type="email" name="email" value="<%=editemail%>" placeholder="Enter Email-Id">
                    </td>
                </tr>
                
                
                 <tr><td>Address</td>
                     <td><textarea name="address" rows="3" cols="20" required><%=editaddress%>"</textarea>
                 </tr>
                 <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="update" value="Update">
                        <input type="reset" name="cancel" value="Cancel">
                    </td>
                </tr>
        </table>
        </form>
    </body>
</html>
