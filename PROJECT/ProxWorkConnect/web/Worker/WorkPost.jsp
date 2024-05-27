<%-- 
    Document   : WorkPost
    Created on : 18 Jan, 2024, 3:28:04 PM
    Author     : abhij
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Work Post</title>
    </head>
    <body>
        
      <form method="post" enctype="multipart/form-data" action="../Assets/ActionPages/WorkPostUploadAction.jsp">
            <table border="3" align="center">

       <tr>
                    
                    <td>Photo</td>
                    <td align="center">
                        <input required type="file" name="photo">
                    </td>
       </tr>
       <tr>
                        <td>Details</td>
                        <td align="center">
                            <textarea name="txt_details" id="txt_details" cols="45" rows="5"></textarea></td>
                    </tr>
       <tr>
                   <td>Duration</td>
                    <td>
                        <input type="text" name="duration" placeholder="Enter duration of work" required>
                    </td>
                </tr>
                <tr>
                   <td>Estimated amount</td>
                    <td>
                        <input type="text" name="workpostamt" placeholder="Estimated amount of the work" required>
                    </td>
                </tr>
       <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="save" value="Save">
                        <input type="reset" name="cancel" value="Cancel">
                    </td>
                </tr>
            </table>
      </form><br>
           
        
    </body>
</html>
