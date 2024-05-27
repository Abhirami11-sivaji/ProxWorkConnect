<%-- 
    Document   : ComplaintStatus
    Created on : 21 May, 2024, 2:15:22 AM
    Author     : abhij
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Complaint Status</title>
    </head>
    <body>
        <h1 align="center">Complaint Status </h1>
        <table border="1" align="center">
            <tr>
                <th>Sl.No</th>
                <th>Date</th>
                <th>Labour</th>
                <th>Complaint content</th>
                <th>Reply</th>
            </tr>
            <% int i = 0;
                String seleQry = "select * from tbl_complaint c  inner join tbl_worker w on w.worker_id=c.worker_id where user_id='"+session.getAttribute("uid") +"'";
                ResultSet res = con.selectCommand(seleQry);
                while (res.next()) {
                    i++;
            %>
            <tr>
                <td align="center">
                    <%=i%></td>
                <td><%=res.getString("complaint_date")%></td>
                <td><%=res.getString("worker_name")%></td>
                <td><%=res.getString("complaint_content")%></td>
                <td>
               <%
                    if(res.getString("complaint_status").equals("0"))
                    {
                        out.print("Pending");
                    }
                    if(res.getString("complaint_status").equals("1"))
                    {
                        out.print(res.getString("complaint_reply"));
                    }
                    
                %>
            </tr>
            <%
                }
            %>
        </table>
        
        <h1 align="center">Complaint Status </h1>
        <table border="1" align="center">
            <tr>
                <th>Sl.No</th>
                <th>Date</th>
                <th>Labour</th>
                <th>Complaint content</th>
                <th>Reply</th>
            </tr>
            <% int j = 0;
                  String seleQry1 = "select * from tbl_complaint c inner join tbl_user u on u.user_id=c.user_id inner join tbl_workpost w on c.workpost_id=w.workpost_id inner join tbl_worker wk on w.worker_id=wk.worker_id where c.user_id='"+session.getAttribute("uid") +"'";
                ResultSet res1 = con.selectCommand(seleQry1);
                while (res1.next()) {
                    j++;
            %>
            <tr>
                <td align="center">
                    <%=i%></td>
                <td><%=res1.getString("complaint_date")%></td>
                <td><%=res1.getString("worker_name")%></td>
                <td><%=res1.getString("complaint_content")%></td>
                <td>
               <%
                    if(res1.getString("complaint_status").equals("0"))
                    {
                        out.print("Pending");
                    }
                    if(res1.getString("complaint_status").equals("1"))
                    {
                        out.print(res1.getString("complaint_reply"));
                    }
                    
                %>
            </tr>
            <%
                }
            %>
        </table>

