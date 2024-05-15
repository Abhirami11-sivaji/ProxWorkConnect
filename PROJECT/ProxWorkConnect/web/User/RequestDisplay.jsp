<%-- 
    Document   : RequestDisplay
    Created on : 14 May, 2024, 10:11:20 AM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RequestDisplay</title>
    </head>
    <body>
        
          <div align="center">
        <h2>Request Notifications</h2>
        <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Labour</th>
                    <th>Work Date</th>
                    <th>Work Details</th>
                    <th>Contact</th>
                    <th>Requested Date</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
                <%
                 String selqry="select * from tbl_workrequest w inner join tbl_worker u on u.worker_id=w.worker_id";
                 ResultSet rs=con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td><%=i%></td>
                         <td><%=rs.getString("worker_name")%></td>
                         <td><%=rs.getString("work_date")%></td>
                         <td><%=rs.getString("request_details")%></td>
                         <td><%=rs.getString("worker_contact")%></td>
                         <td><%=rs.getString("request_date")%></td>
                         <td>
                             <%
                              if(rs.getString("request_status").equals("0"))
                              {
                                out.println("Request pending");
                                }
                              else if(rs.getString("request_status").equals("1"))
                                {
                                 out.println("Request accepted");
                                 }
                              else if(rs.getString("request_status").equals("2"))
                                {
                                    out.println("Request rejected");
                                }
                              else if(rs.getString("request_status").equals("3"))
                              {
                                 out.println("Work started"); 
                              }
                       %>  </td>
                         <td>
                             <%
                               if (rs.getInt("request_status")==1)
                                {
                              %>
                                <a href="">Pay Now</a> 
                             <%
                                 }
                              %>
                         </td>
                     </tr>
                     <%
                 }
                     %>      
                    
            </table>
          </div>
    </body>
</html>