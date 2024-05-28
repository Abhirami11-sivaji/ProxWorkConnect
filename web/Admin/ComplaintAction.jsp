<%-- 
    Document   : ComplaintAction
    Created on : 21 May, 2024, 1:49:31 AM
    Author     : abhij
--%>



<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint Action</title>
    </head>
        <body> 
            
            
        <%
            String seleQry = "select * from tbl_complaint f inner join tbl_user u on f.user_id=u.user_id inner join tbl_worker w on w.worker_id=f.worker_id where f.complaint_id ='" + request.getParameter("pid") + "'";
            ResultSet ress = con.selectCommand(seleQry);
            if (ress.next()) 
            {
        %>
        <table border="1" align="center">
            <tr>
                <th>User Name</th> 
                <th>Worker Name</th> 
                <th>Date</th>
                <th>Complaint content</th>
            </tr>
            <tr>
                <td><%=ress.getString("user_name")%></td>
                <td><%=ress.getString("worker_name")%></td>
                <td><%=ress.getString("complaint_date")%></td>
                <td><%=ress.getString("complaint_content")%></td>
            </tr>
        
            <%
                }
            %>
        </table>
        
       
           <%
            String seleQry1 = "select * from tbl_complaint f inner join tbl_user u on f.user_id=u.user_id inner join tbl_workpost p on p.workpost_id=f.workpost_id inner join tbl_worker w on w.worker_id=p.worker_id where f.complaint_id ='" + request.getParameter("pid") + "'";
            ResultSet res = con.selectCommand(seleQry1);
            if (res.next()) 
            {
        %>
        <table border="1" align="center">
            <tr>
                <th>User Name</th> 
                <th>Worker Name</th> 
                <th>Date</th>
                <th>Complaint content</th>
            </tr>
            <tr>
                <td><%=res.getString("user_name")%></td>
                <td><%=res.getString("worker_name")%></td>
                <td><%=res.getString("complaint_date")%></td>
                <td><%=res.getString("complaint_content")%></td>
            </tr>
        
            <%
                }
            %>
        </table> 
        
            <%
            if(request.getParameter("btn_submit")!=null)
            {
                String uq = "update tbl_complaint set complaint_reply='"+request.getParameter("reply_content")+"' where complaint_id = '"+request.getParameter("pid")+"'";
                if(con.executeCommand(uq)){
                    String up= "update tbl_complaint set complaint_status='1' where complaint_id ='"+request.getParameter("pid")+"'"  ;
                    if(con.executeCommand(up)){
                    %>
                <script type="text/javascript" >
                    alert("Complaint Submitted");
                    setTimeout(function() {
                    window.location.href = 'AdminHomePage.jsp'
                    }, 1000);
                </script>
            <%
                    } 
                    else{
                     String up1= "update tbl_complaint set complaint_status='0' where complaint_id ='"+request.getParameter("pid")+"'"  ;
                     con.executeCommand(up1);
                    }
                }
            }   
            %>
       
        <form method="post" >
        <table border="1" align="center">
        <tr>
        <td>Complaint Reply</td>
        <td>
        <textarea name="reply_content" rows="6" cols="20"></textarea>
        </td>
        </tr>
        <tr>
        <td colspan="2" align="center"><input type="submit" name="btn_submit" value="Register">&nbsp&nbsp
            <input type="reset" name="btn_reset" value="Reset"</td>
        </tr>
        </table>
       
        </form>
           
        
            
     
    
        </form>
    </body>
</html>
        
