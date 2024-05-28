<%-- 
    Document   : BookingAction
    Created on : 14 May, 2024, 12:47:06 PM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Action</title>
    </head>
    <body>

     <%
         if(request.getParameter("aid")!=null)
         {
                  String upqry="update tbl_workpostrequest set request_status='1' where request_id='"+request.getParameter("aid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("BookingAction.jsp");
         }
         }
         if(request.getParameter("rid")!=null)
         {
                  String upqry="update tbl_workpostrequest set request_status='2' where request_id='"+request.getParameter("rid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("BookingAction.jsp");
         }
         }
         if(request.getParameter("tid")!=null)
         {
                  String upqry="update tbl_workpostrequest set request_status='3' where request_id='"+request.getParameter("tid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("BookingAction.jsp");
         }
         }
         if(request.getParameter("eid")!=null)
         {
                  String upqry="update tbl_workpostrequest set request_status='4' where request_id='"+request.getParameter("eid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("BookingAction.jsp");
         }
         }
         
         if(request.getParameter("fid")!=null)
         {

                  String upqry="update tbl_workpostrequest set request_status='6' where request_id='"+request.getParameter("fid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("BookingAction.jsp");
         }
         }
        %>
        <div align="center">
        <h2>New Bookings</h2>
        <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Booking From</th>
                    <th>Work Date</th>
                    <th>Work Details</th>
                    <th>Address</th>
                    <th>Contact</th>
                    <th>Requested Date</th>
                    <th>Action</th>
                </tr>
                <%
                 String selqry="select * from tbl_workpostrequest w inner join tbl_user u on u.user_id=w.user_id inner join tbl_workpost wp on wp.workpost_id=w.workpost_id where w.request_status='0' and wp.worker_id='" + session.getAttribute("wid") + "'";
                 ResultSet rs=con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td><%=i%></td>
                         <td><%=rs.getString("user_name")%></td>
                         <td><%=rs.getString("work_date")%></td>
                         <td><%=rs.getString("request_details")%></td>
                         <td><%=rs.getString("address")%></td>
                         <td><%=rs.getString("user_contact")%></td>
                         <td><%=rs.getString("request_date")%></td>
                         
                         
                          <td><a href="BookingAction.jsp?aid=<%=rs.getString("request_id")%>">Accept</a>
                         |<a href="BookingAction.jsp?rid=<%=rs.getString("request_id")%>">Reject</a></td>
                     </tr>
                     <%
                 }
                     %>      
                    
            </table>
            <h2>Accepted Bookings</h2>         
                <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Booking From</th>
                    <th>Work Date</th>
                    <th>Work Details</th>
                    <th>Address</th>
                    <th>Contact</th>
                    <th>Requested Date</th>
                    <th>Status</th>
                    <th>Action</th>  
                </tr>
        <%
                 String selqry1="select * from tbl_workpostrequest w inner join tbl_user u on u.user_id=w.user_id inner join tbl_workpost wp on wp.workpost_id=w.workpost_id where (w.request_status='1' or w.request_status='3' or w.request_status='4' or w.request_status='5' or w.request_status='6') and wp.worker_id='" + session.getAttribute("wid") + "'";
                 ResultSet rs1=con.selectCommand(selqry1);
                 int j=0;
                 while(rs1.next())
                 {
                     j++;
                     %>
                     <tr>
                         <td><%=j%></td>
                         <td><%=rs1.getString("user_name")%></td>
                         <td><%=rs1.getString("work_date")%></td>
                         <td><%=rs1.getString("request_details")%></td>
                         <td><%=rs1.getString("address")%></td>
                         <td><%=rs1.getString("user_contact")%></td>
                         <td><%=rs1.getString("request_date")%></td>
                         <td>
                    <%
                    if(rs1.getString("request_status").equals("1"))
                    {
                    %>
                    <a href="BookingAction.jsp?tid=<%=rs1.getString("request_id")%>">Start work</a>
                    <%
                    }
                    if(rs1.getString("request_status").equals("3"))
                    {
                    %>
                    <a href="BookingAction.jsp?eid=<%=rs1.getString("request_id")%>">End work</a>
                    <%
                    }

                    else if(rs1.getString("request_status").equals("4"))//if work ended
                    {
                   
                    %>

                    Amount : <%=rs1.getString("workpost_amount")%><br>
                   <%
                    out.println("Payment pending");   
                    }
                    else if(rs1.getString("request_status").equals("5"))//payment done
                    {
                        out.println("Payment Received");
                    }
                    else if(rs1.getString("request_status").equals("6"))//finished
                    {
                        out.println("Completed");
                    }

                    %>
                         </td>
                     <td>
                     <%
                     int a = Integer.parseInt(rs1.getString("request_status"));
                     if(a<2)
                     {
                     %>      
                             <a href="BookingAction.jsp?rid=<%=rs1.getString("request_id")%>">Reject</a>
                     <%
                     }

                    if(rs1.getString("request_status").equals("5"))

                    {
                    %>
                         <a href="BookingAction.jsp?fid=<%=rs1.getString("request_id")%>">Finish</a>
                    <%
                    }                                           
                     %> 
                     </td>  
                     </tr>
                     <%
                 }
                     %>       
             </table>
             <h2>Rejected Bookings</h2>         
                  <table border="1" align="center">
                <tr>
                   <th>Sl.no</th>
                    <th>Booking From</th>
                    <th>Work Date</th>
                    <th>Work Details</th>
                    <th>Address</th>
                    <th>Contact</th>
                    <th>Requested Date</th>
                    <th>Action</th>   
                </tr>
        <%
                 String selqry2="select * from tbl_workpostrequest w inner join tbl_user u on u.user_id=w.user_id inner join tbl_workpost wp on wp.workpost_id=w.workpost_id where w.request_status='2' and wp.worker_id='" + session.getAttribute("wid") + "'";
                 ResultSet rs2=con.selectCommand(selqry2);
                 int k=0;
                 while(rs2.next())
                 {
                     k++;
                     %>
                     <tr>
                         <td><%=k%></td>
                         <td><%=rs2.getString("user_name")%></td>
                         <td><%=rs2.getString("work_date")%></td>
                         <td><%=rs2.getString("request_details")%></td>
                         <td><%=rs2.getString("address")%></td>
                         <td><%=rs2.getString("user_contact")%></td>
                         <td><%=rs2.getString("request_date")%></td>
                         
                          <td><a href="BookingAction.jsp?aid=<%=rs2.getString("request_id")%>">Accept</a>
                         </td>
                     </tr>
                     <%
                 }
                     %>      
             </table>    
            
        </div>      
    </body>
</html>
