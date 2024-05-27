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
        
        <form method="post" enctype="multipart/form-data" action="../Assets/ActionPages/RequestUploadAction.jsp">
            <table border="3" align="center">
                
        
        <tr>
                        <td>Details</td>
                        <td align="center">
                            <textarea name="txt_details" id="txt_details" cols="45" rows="5"></textarea></td>
                    </tr>
                     <tr>
                    
                    <td>Photo</td>
                    <td align="center">
                        <input required type="file" name="photo">
                    </td>
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
                
           
                        <input type="hidden" name="workerid"  value="<%=request.getParameter("rid")%>"  placeholder="Enter Date of Work" required>
                    
       
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
