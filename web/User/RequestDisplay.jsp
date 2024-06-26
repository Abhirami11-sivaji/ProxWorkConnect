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
                    <th>Requested Date</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
                <%
         
                 String selqry="select * from tbl_workrequest w inner join tbl_worker u on u.worker_id=w.worker_id where w.user_id='" + session.getAttribute("uid") + "'";
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

                             else if(rs.getString("request_status").equals("4") || rs.getString("request_status").equals("5"))//payment requested
                              {
                                 out.println("Work completed"); 
                              }
                              else if(rs.getString("request_status").equals("6"))//payment done
                              {
                                 out.println("Payment Done"); 
                              }
                              else if(rs.getString("request_status").equals("7"))//finished
                              {
                                 out.println("Ended"); 
                                 %>
                                 <a href="Review.jsp?gid=<%=rs.getString("worker_id")%>">Rate Now</a>
                                 <%
                              }
                              else if(rs.getString("request_status").equals("8"))//visit site before accept
                              {
                                 out.println("Site will be visited"); 
                              }
                            %>  </td>
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
                              <a href="Complaint.jsp?cid=<%=rs.getString("worker_id")%>">Complaints</a><br>
                              <%
                               }
                              if(rs.getInt("request_status")==5)//payment requested
                              {
                               int worker_amt=Integer.parseInt(rs.getString("request_amount"));
                               int perc=(worker_amt/100)*5;
                               int total=worker_amt+perc;
                              %>  
                              
                              Amount : <%out.println(total);%><br>
                              Remarks : <%=rs.getString("request_remarks")%><br>
                              
                              <a href="Payment.jsp?yid=<%=rs.getString("workrequest_id")%>">Pay Now</a> 
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
