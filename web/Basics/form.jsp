<%-- 
    Document   : form
    Created on : 28 Oct, 2023, 1:40:09 PM
    Author     : abhij
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
    </head>
    <body>
        <form method="post">
            <table border="3" align="center">
                <tr>
                    <td>Name</td>
                    <td>
                        <input type="text" name="txtname" placeholder="Enter Name">
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <input type="text" name="txtcontact" placeholder="Enter Contact No">
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input type="email" name="txtemail" placeholder="Enter Email-Id">
                    </td>
                </tr>
                
                
                 <tr><td>Address</td>
                     <td><textarea name="address" rows="3" cols="10"></textarea>
                 </tr>
                <tr>
                    <tr>
                    <td>DOB</td>
                    <td>
                        <input type="text" name="txtdob"placeholder="Enter DateOfBirth" >
                    </td>
                </tr>
                 <tr>
                    <td>Work Post</td>
                    <td>
                        <select name="ddlLoc">
                            <option>--select--</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Title</td>
                    <td>
                        <input type="text" name="txtdob"placeholder="Enter Complaint Title" >
                    </td>
                </tr>
                 <tr><td>Content</td>
                     <td><textarea name="reqdetails" rows="3" cols="25"></textarea>
                 </tr>
                 <tr><td>Reply</td>
                     <td><textarea name="reqdetails" rows="3" cols="20"></textarea>
                 </tr>
                
                <tr>
                    <td>Image Gallery</td>
                    <td align="center">
                        <input type="file" name="txtphoto">
                    </td>
                </tr>
                <tr>
                    <td>Duration</td>
                    <td>
                        <input type="text" name="txtname" placeholder="Enter work duration">
                    </td>
                </tr>
                <tr>
                  <td>Gender</td>
                    <td>
                        Male<input type="radio" name="txtmale">
                        Female<input type="radio" name="txtfemale">
                        Others<input type="radio" name="txtothers">
                    </td>
                </tr>
              
                <tr>
                 <tr>
                    <td>Password</td>
                    <td>
                        <input type="password" name="txtpsswd" placeholder="Enter Password">
                    </td>
                </tr>
                <tr>
                    <td>District</td>
                    <td>
                        <select name="ddlLoc">
                            <option>--select--</option>
                        </select>
                    </td>
                </tr>
                    <td>Place</td>
                    <td>
                        <select name="ddlplace">
                            <option>--select--</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Location</td>
                    <td>
                        <select name="ddlloc">
                            <option>--select--</option>
                        </select>
                    </td>
                </tr>
                <!--<tr>
                    <td>Ward</td>
                    <td>
                        <select name="ddlWard">
                            <option>--select Ward--</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input type="password" name="txtpsswd" placeholder="Enter Password">
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <input type="password" name="txtpsswd" placeholder="ReEnter Password">
                    </td>
                </tr> -->        
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="txtsave" value="Save">
                        <input type="reset" name="txtcancel" value="Cancel">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
