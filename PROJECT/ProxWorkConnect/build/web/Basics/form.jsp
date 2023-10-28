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
                <!<tr>
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
                <tr>
                    <td>Gender</td>
                    <td>
                        Male<input type="radio" name="txtmale">
                        Female<input type="radio" name="txtfemale">
                        Others<input type="radio" name="txtothers">
                    </td>
                </tr>
                <tr>
                    <td>Photo</td>
                    <td align="center">
                        <input type="file" name="txtphoto">
                    </td>
                </tr>
                <tr>
                    <td>HouseNo</td>
                    <td>
                        <input type="text" name="txthno"placeholder="Enter HouseNo" >
                    </td>
                </tr>
                <tr>
                    <td>Location</td>
                    <td>
                        <select name="ddlLoc">
                            <option>--select location--</option>
                        </select>
                    </td>
                </tr>
                <tr>
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
                </tr>         
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
