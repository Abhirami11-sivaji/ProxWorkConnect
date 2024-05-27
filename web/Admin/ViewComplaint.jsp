<%-- 
    Document   : ViewComplaint
    Created on : 21 May, 2024, 2:00:41 AM
    Author     : abhij
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Complaint</title>
    </head>
    <body>
<<<<<<< HEAD:PROJECT/ProxWorkConnect/web/Admin/ViewComplaint.jsp
        <h3 align="center">Labour Complaints </h3>
=======
        <h1 align="center">Labour Complaint </h1>
>>>>>>> 299d29f755245342251e0c5596d90e53eb55d09c:web/Admin/ViewComplaint.jsp
        <table border="1" align="center">
            <tr>
                <th>Sl.No</th>
                <th>User Name</th> 
                <th>Worker Name</th> 
                <th>Date</th>
                <th>Complaint content</th>
                <th>Action</th>
                <th>Status</th>


            </tr>
            <% int i = 0;
                String seleQry = "select * from tbl_complaint f inner join tbl_user u on u.user_id=f.user_id inner join tbl_worker w on w.worker_id=f.worker_id where w.worker_id!=''";
                ResultSet res = con.selectCommand(seleQry);
                while (res.next()) {
                    i++;
            %>
            <tr>
                <td align="center">
                    <%=i%></td>
                <td><%=res.getString("user_name")%></td>
                <td><%=res.getString("worker_name")%></td>
                <td><%=res.getString("complaint_date")%></td>
                <td><%=res.getString("complaint_content")%></td>
                <td><a href="ComplaintAction.jsp?pid=<%=res.getString("complaint_id")%>">Reply</a></td>
                <td>
                    <%

                        if (res.getString("complaint_status").equals("0")) {
                            out.print("Pending");
                        }
                        if (res.getString("complaint_status").equals("1")) {
                            out.print(res.getString("complaint_reply"));
                        }
                    %>
                </td>
            </tr>
            <%
                }
            %>
        </table>

<<<<<<< HEAD:PROJECT/ProxWorkConnect/web/Admin/ViewComplaint.jsp
        <h3 align="center">Work Complaints </h3>
=======
        <h1 align="center">Work Complaint </h1>
>>>>>>> 299d29f755245342251e0c5596d90e53eb55d09c:web/Admin/ViewComplaint.jsp
        <table border="1" align="center">
            <tr>
                <th>Sl.No</th>
                <th>User Name</th> 
                <th>Worker Name</th> 
                <th>Date</th>
                <th>Complaint content</th>
                <th>Action</th>
                <th>Status</th>


            </tr>
            <%
                int j = 0;
                String seleQry1 = "select * from tbl_complaint c inner join tbl_user u on u.user_id=c.user_id inner join tbl_workpost w on c.workpost_id=w.workpost_id inner join tbl_worker wk on w.worker_id=wk.worker_id";
                ResultSet res1 = con.selectCommand(seleQry1);
                while (res1.next()) {
                    j++;
            %>
            <tr>
                <td align="center">
                    <%=j%></td>
                <td><%=res1.getString("user_name")%></td>
                <td><%=res1.getString("worker_name")%></td>
                <td><%=res1.getString("complaint_date")%></td>
                <td><%=res1.getString("complaint_content")%></td>
                <td><a href="ComplaintAction.jsp?pid=<%=res1.getString("complaint_id")%>">Reply</a></td>
                <td>
                    <%

                        if (res1.getString("complaint_status").equals("0")) {
                            out.print("Pending");
                        }
                        if (res1.getString("complaint_status").equals("1")) {
                            out.print(res1.getString("complaint_reply"));
                        }
                    %>
                </td>
            </tr>
            <%
                }
            %>
        </table>
<<<<<<< HEAD:PROJECT/ProxWorkConnect/web/Admin/ViewComplaint.jsp
        
=======
>>>>>>> 299d29f755245342251e0c5596d90e53eb55d09c:web/Admin/ViewComplaint.jsp
    </body>
</html>
