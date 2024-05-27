<%-- 
    Document   : WorkerRegistration
    Created on : 15 Dec, 2023, 3:02:54 PM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Worker Registration</title>
        <style>
            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/aa.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }
            .text-box {
                background-color: transparent;
                width: 215px;
                color:gray;
            }
        </style>
    </head>
    <%@include file="Head.jsp"%>


     <div class="bg-img">
            <div style="background-color: #000000b8 !important;">
                <br><br>
                <body>    
                <div style="color:white;font-size: 15px;">
                <table align="center" cellpadding="10"></table>
        <form method="post" enctype="multipart/form-data" action="../Assets/ActionPages/WorkerUploadAction.jsp">
            <table border="3" align="center">
                <tr>
                    <td>Name</td>
                    <td>
                        <input required type="text" name="name" class="text-box" placeholder="Enter Name" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$">
                        </td>
                    
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <input required type="text" name="contact" class="text-box" placeholder="Enter Contact No" title="Phone number with 7-9 and remaining 9 digit with 0-9" pattern="[7-9]{1}[0-9]{9}" >
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input type="email" name="email" class="text-box" placeholder="Enter Email-Id" required>
                    </td>
                </tr>
                
                
                 <tr><td>Address</td>
                     <td><textarea name="address" rows="3" cols="10" class="text-box" required></textarea>
                 </tr>
                    
                 <tr>
                    <td>Photo</td>
                    <td>
                        <input type="file" name="photo" class="text-box" required>
                    </td>
                </tr>
                <tr>
                    <td>Proof</td>
                    <td>
                        <input type="file" name="proof"  class="text-box" required ><br>
                        *Kerala Shops and Commercial Establishments Workers Welfare Board membership id.
                    </td>
                </tr>
                <tr>
                    <td>DOB</td>
                    <td>
                        <input type="text" name="dob"  class="text-box" placeholder="Enter DateOfBirth" required >
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input required type="password" name="psswd" class="text-box" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                               title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
                    </td>
                </tr> 
                <tr>
            <td>Confirm Password</td>
            <td><input type="password" required name="repass" class="text-box" placeholder="Re-Enter Password"></td>
          </tr>
                <tr>
                    <td>District</td>
                    <td>
                        <select name="ddldis" onchange="getPlace(this.value)" class="text-box" required>
                            <option>--select--</option>
                            <%
                              String selqry1="select * from tbl_district";
                              ResultSet rs1=con.selectCommand(selqry1);
                              while(rs1.next())
                              {
                              
                            %>
                            <option value="<%=rs1.getString("district_id")%>"><%=rs1.getString("district_name")%></option>
                            <%
                              }
                            %>
                            
                        </select>
                    </td>
                <tr>
                    <td>Place</td>
                    <td>
                        <select name="ddlplace" id="selplace"  class="text-box" required>
                            <option>--select--</option>
                            
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Worker Type</td>
                    <td>
                        <select name="ddltype"  class="text-box" required>
                            <option>--select--</option>
                            <%
                              String selqry2="select * from tbl_workertype";
                              ResultSet rs2=con.selectCommand(selqry2);
                              while(rs2.next())
                              {
                              
                            %>
                            <option value="<%=rs2.getString("workertype_id")%>"><%=rs2.getString("workertype_name")%></option>
                            <%
                              }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="save" value="Save">
                        <input type="reset" name="cancel" value="Cancel">
                    </td>
                </tr>
            </table>
        </form>
    </body>
    <script src="../Assets/JQuery/jQuery.js"></script>         
                            <script>
                              function getPlace(did)
                            {
                              
                           //  alert(did);  
                                $.ajax({url:"../Assets/AjaxPages/AjaxPlaces.jsp?pid=" + did,
                                success: function(result){
                                    $("#selplace").html(result);
                                }
                            })
                            }
                           
                        </script>
</html>
<%@include file="Foot.jsp"%>