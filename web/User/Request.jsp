<%-- 
    Document   : Request
    Created on : 1 Mar, 2024, 2:41:24 PM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request</title>
    </head>
    <body>
        <%
          if(request.getParameter("request")!=null){
                       String insqry="insert into tbl_workrequest(request_details,address,work_date,request_date,worker_id,user_id)values('"+request.getParameter("txt_details")+"','"+request.getParameter("txt_address")+"','"+request.getParameter("date")+"',curdate(),'"+request.getParameter("rid")+"','"+session.getAttribute("uid")+"')";
              con.executeCommand(insqry);
        %>
        <script>
                alert("Request Successfull");
                window.location="UserHomePage.jsp";
            </script>
         <%
          }
          %>
        <form method="post">
            <table border="3" align="center">
        <tr>
                        <td>Details</td>
                        <td align="center">
                            <textarea name="txt_details" id="txt_details" cols="45" rows="5"></textarea></td>
                    </tr>
                     <tr>
                        <td>Address</td>
                        <td align="center">
                            <textarea name="txt_address" id="txt_address" cols="45" rows="5"></textarea></td>
                    </tr>
                     <tr>
                    <td>Work Date</td>
                    <td>
                        <input type="text" name="date" placeholder="Enter Date of Work" required>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="request" value="Request">
                        <input type="reset" name="cancel" value="Cancel">
                    </td>
                </tr>
            </table>
        </form>
    </body>
    
</html>
