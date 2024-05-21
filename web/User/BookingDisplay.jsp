<%-- 
    Document   : BookingDisplay
    Created on : 14 May, 2024, 1:59:11 PM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Display</title>
    </head>
    <body>
          <div align="center">
        <h2>Booking Notifications</h2>
        <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Posts</th>
                    <th>Work Date</th>
                    <th>Work Details</th>
                    <th>Requested Date</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
                <%
                 String selqry="select * from tbl_workpostrequest w inner join tbl_workpost p on p.workpost_id=w.workpost_id inner join tbl_worker r on r.worker_id=p.worker_id";
                 ResultSet rs=con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td><%=i%></td>
                         <td><img src="../Assets/Files/WorkPostPhoto/<%=rs.getString("workpost_image")%>" height="90" width="90"</td>
                         <td><%=rs.getString("work_date")%></td>
                         <td><%=rs.getString("request_details")%></td>
                         <td><%=rs.getString("request_date")%></td>
                         <td>
                             <%
                              if (rs.getInt("request_status")==0)
                              {
                                out.println("Request pending");
                                }
                              else if (rs.getInt("request_status")==1)
                                {
                                 out.println("Request accepted");
                                 }
                              else if (rs.getInt("request_status")==2)
                                {
                                    out.println("Request rejected");
                                }
                               else if (rs.getInt("request_status")==3)
                                {
                                    out.println("Work started");
                                }
                               else if (rs.getInt("request_status")==4 || rs.getInt("request_status")==5)
                                {
                                    out.println("Work completed");
                                }
                              else if(rs.getInt("request_status")==6)
                              {
                                 out.println("Payment Done"); 
                              }
                              else if(rs.getInt("request_status")==7)
                              {
                                 out.println("Ended"); 
                                 %>
                                 <a href="ReviewWork.jsp?gid=<%=rs.getString("request_id")%>">Rate Now</a>
                                 <%
                              }
                       %> 
                         </td>
                         <td>
                              <%
                               if (rs.getInt("request_status")==0)
                                {
                                    out.println();
                                }
                               else if (rs.getInt("request_status")==2)
                                {
                                    out.println();
                                }
                               else{
                              %>
                              Contact : <%=rs.getString("worker_contact")%><br>
                              <a href="ComplaintWork.jsp?cid=<%=rs.getString("workpost_id")%>">Complaints</a><br>
                              <%
                               }
                              if(rs.getInt("request_status")==5)
                              {
                               int worker_amt=Integer.parseInt(rs.getString("request_amount"));
                               int perc=(worker_amt/100)*10;
                               int total=worker_amt+perc;
                              %>  
                              
                              Amount : <%out.println(total);%><br>
                              Remarks : <%=rs.getString("request_remarks")%><br>
                              
                              <a href="PaymentBooking.jsp?yid=<%=rs.getString("request_id")%>">Pay Now</a>
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
