<%-- 
    Document   : Login
    Created on : 5 Jan, 2024, 4:06:32 PM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <%
           if(request.getParameter("btn_login")!=null) 
           {
             String email=request.getParameter("txtemail");
             String password=request.getParameter("txtpsswd");
             
             
             String seluser="select * from tbl_user where user_email='"+email+"' and user_password='"+password+"'";
             ResultSet rs1=con.selectCommand(seluser);
             String selworker="select * from tbl_worker where worker_email='"+email+"' and worker_password='"+password+"'";
             ResultSet rs2=con.selectCommand(selworker);
             String seladmin="select * from tbl_admin where admin_email='"+email+"' and admin_password='"+password+"'";
             ResultSet rs3=con.selectCommand(seladmin);
             
             if(rs1.next())
                     {
                         if(rs1.getString("user_status").equals("0")){
                            response.sendRedirect("PaymentReg.jsp?uid="+rs1.getString("user_id")); 
                         }
                        else{
                       session.setAttribute("uid",rs1.getString("user_id"));
                       session.setAttribute("uname",rs1.getString("user_name"));
                       response.sendRedirect("../User/UserHomePage.jsp");
                     }
                     }     
             else if(rs2.next())
                     {
                       session.setAttribute("wid",rs2.getString("worker_id"));
                       session.setAttribute("wname",rs2.getString("worker_name"));
                       response.sendRedirect("../Worker/WorkerHomePage.jsp");
                     }
             else if(rs3.next())
                     {
                       session.setAttribute("aid",rs3.getString("admin_id"));
                       session.setAttribute("aname",rs3.getString("admin_name"));
                       response.sendRedirect("../Admin/AdminHomePage.jsp");
                     }
              else {
                    %>
                    <script>
                      alert("Invalid credentilas");
                      window.location = "Login.jsp";//password thettiya same pg illot varan
                    </script>
            <%
                }
             } 
            %>
       
                
        <form method="post">
        <table border="3" align="center">
        <tr>
                    <td>Email</td>
                    <td>
                        <input type="email" name="txtemail" placeholder="Enter Email-Id" required>
                    </td>
        </tr>
        <tr>
                    <td>Password</td>
                    <td>
                        <input required type="password" name="txtpsswd" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                               title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters">
                    </td>
                </tr> 
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btn_login" value="Login">
                       
                    </td>
                </tr>
        </table>
    </form>
    </body>
</html>
