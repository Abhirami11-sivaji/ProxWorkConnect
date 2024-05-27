<%-- 
    Document   : RequestAction
    Created on : 4 Mar, 2024, 6:12:19 PM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Requests</title>
    </head>
    <body>
        <body>
     <%
         if(request.getParameter("aid")!=null)
         {
                  String upqry="update tbl_workrequest set request_status='1' where workrequest_id='"+request.getParameter("aid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("RequestAction.jsp");
         }
         }
         if(request.getParameter("rid")!=null)
         {
                  String upqry="update tbl_workrequest set request_status='2' where workrequest_id='"+request.getParameter("rid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("RequestAction.jsp");
         }
         }
         if(request.getParameter("tid")!=null)
         {
                  String upqry="update tbl_workrequest set request_status='3' where workrequest_id='"+request.getParameter("tid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("RequestAction.jsp");
         }
         }
         if(request.getParameter("eid")!=null)
         {
                  String upqry="update tbl_workrequest set request_status='4' where workrequest_id='"+request.getParameter("eid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("RequestAction.jsp");
         }
         }
         
         if(request.getParameter("fid")!=null)
         {
                  String upqry="update tbl_workrequest set request_status='7' where workrequest_id='"+request.getParameter("fid")+"'";
                  if(con.executeCommand(upqry)){
                  response.sendRedirect("RequestAction.jsp");
         }
         }
<<<<<<< HEAD:PROJECT/ProxWorkConnect/build/web/Worker/RequestAction.jsp
          if(request.getParameter("vid")!=null)
         {
                  String upqry="update tbl_workrequest set request_status='8' where workrequest_id='"+request.getParameter("vid")+"'";
                  if(con.executeCommand(upqry)){
              %>
                   <script type="text/javascript" >
                      alert("Contact the user for further informations.");
                       setTimeout(function() {
                window.location.href = 'RequestAction.jsp'
            }, 100);
        </script>
                          <%
                            }
         }
                          %>
    
        
              
       
=======
        
              
        %>
>>>>>>> 299d29f755245342251e0c5596d90e53eb55d09c:web/Worker/RequestAction.jsp
        <div align="center">
        <h2>New Requests</h2>
        <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Request From</th>
                    <th>Work Date</th>
                    <th>Work Details</th>
                    <th>Photo</th>
                    <th>Address</th>
                    <th>Contact</th>
                    <th>Requested Date</th>
                    <th>Action</th>
                </tr>
                <%
                 String selqry="select * from tbl_workrequest w inner join tbl_user u on u.user_id=w.user_id where w.request_status='0' or w.request_status='8' and w.worker_id='"+session.getAttribute("wid")+"'";
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
                         <td><img src="../Assets/Files/RequestPhoto/<%=rs.getString("request_photo")%>" height="120" width="120"></td>
                         <td><%=rs.getString("address")%></td>
                         <td><%=rs.getString("user_contact")%></td>
                         <td><%=rs.getString("request_date")%></td>
                         
                         
                          <td><a href="RequestAction.jsp?vid=<%=rs.getString("workrequest_id")%>">Visit site</a>
                                    
                         |<a href="RequestAction.jsp?aid=<%=rs.getString("workrequest_id")%>">Accept</a>
                         |<a href="RequestAction.jsp?rid=<%=rs.getString("workrequest_id")%>">Reject</a></td>
                     </tr>
                     <%
                 }
                     %>      
                    
            </table>
            <h2>Accepted Requests</h2>         
                <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Request From</th>
                    <th>Work Date</th>
                    <th>Work Details</th>
                    <th>Photo</th>
                    <th>Address</th>
                    <th>Contact</th>
                    <th>Requested Date</th>
                    <th>Status</th>
                    <th>Action</th>
                     
                </tr>
        <%
<<<<<<< HEAD:PROJECT/ProxWorkConnect/build/web/Worker/RequestAction.jsp
                 String selqry1="select * from tbl_workrequest w inner join tbl_user u on u.user_id=w.user_id where w.request_status='1' or w.request_status='3' or w.request_status='4'or w.request_status='5' or w.request_status='6' or w.request_status='7' and w.worker_id='"+session.getAttribute("wid")+"'";
=======
                 String selqry1="select * from tbl_workrequest w inner join tbl_user u on u.user_id=w.user_id where w.request_status='1' or w.request_status='3' or w.request_status='4'or w.request_status='5' or w.request_status='6' or w.request_status='7'";
>>>>>>> 299d29f755245342251e0c5596d90e53eb55d09c:web/Worker/RequestAction.jsp
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
                         <td><img src="../Assets/Files/RequestPhoto/<%=rs1.getString("request_photo")%>" height="120" width="120"></td>
                         <td><%=rs1.getString("address")%></td>
                         <td><%=rs1.getString("user_contact")%></td>
                         <td><%=rs1.getString("request_date")%></td>
                         
                         <td>
                      
                    <%
                    if(rs1.getString("request_status").equals("1"))//if work accepted
                    {
                    %>
                    <a href="RequestAction.jsp?tid=<%=rs1.getString("workrequest_id")%>">Start work</a>
                    <%
                    }
<<<<<<< HEAD:PROJECT/ProxWorkConnect/build/web/Worker/RequestAction.jsp
                    else if(rs1.getString("request_status").equals("3"))//if work started
=======
                    else if(rs1.getString("request_status").equals("3"))
>>>>>>> 299d29f755245342251e0c5596d90e53eb55d09c:web/Worker/RequestAction.jsp
                    {
                    %>
                    <a href="RequestAction.jsp?eid=<%=rs1.getString("workrequest_id")%>">End work</a>
                    <%
                    }
<<<<<<< HEAD:PROJECT/ProxWorkConnect/build/web/Worker/RequestAction.jsp
                    else if(rs1.getString("request_status").equals("6"))//if payment done
                    {
                        out.println("Payment Received");
                    }
                    else if(rs1.getString("request_status").equals("7"))//if finished
=======
                    else if(rs1.getString("request_status").equals("6"))
                    {
                        out.println("Payment Received");
                    }
                    else if(rs1.getString("request_status").equals("7"))
>>>>>>> 299d29f755245342251e0c5596d90e53eb55d09c:web/Worker/RequestAction.jsp
                    {
                        out.println("Completed");
                    }
                    
<<<<<<< HEAD:PROJECT/ProxWorkConnect/build/web/Worker/RequestAction.jsp
                    else if(rs1.getString("request_status").equals("4"))//if work ended 
=======
                    else if(rs1.getString("request_status").equals("4"))
>>>>>>> 299d29f755245342251e0c5596d90e53eb55d09c:web/Worker/RequestAction.jsp
                    {
                    %>
                    <a href="PayRequest.jsp?nid=<%=rs1.getString("workrequest_id")%>">Pay Request</a>
                    <%
                      
                    }
                    else
                    {
                    %>
                    Amount : <%=rs1.getString("request_amount")%><br>
                   <%
                    out.println("Payment pending");   
                    }
                    
                    %>
                  
                         </td>
                    <td>
                     <%
                     int a = Integer.parseInt(rs1.getString("request_status"));
                     if(a<2)
                     {
                     %>      
                             <a href="RequestAction.jsp?rid=<%=rs1.getString("workrequest_id")%>">Reject</a>
                     <%
                     }
<<<<<<< HEAD:PROJECT/ProxWorkConnect/build/web/Worker/RequestAction.jsp
                    if(rs1.getString("request_status").equals("6"))//if payment done
=======
                    if(rs1.getString("request_status").equals("6"))
>>>>>>> 299d29f755245342251e0c5596d90e53eb55d09c:web/Worker/RequestAction.jsp
                    {
                    %>
                         <a href="RequestAction.jsp?fid=<%=rs1.getString("workrequest_id")%>">Finish</a>
                    <%
                    }
                                           
                     %>
                     </td>
                     </tr>
                     <%
                 }
                     %>      
             </table>
             <h2>Rejected Requests</h2>         
                  <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Request From</th>
                    <th>Work Date</th>
                    <th>Work Details</th>
                    <th>Photo</th>
                    <th>Address</th>
                    <th>Contact</th>
                    <th>Requested Date</th>
                    <th>Action</th>   
                </tr>
        <%
                 String selqry2="select * from tbl_workrequest w inner join tbl_user u on u.user_id=w.user_id where w.request_status='2' and w.worker_id='"+session.getAttribute("wid")+"'";
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
                         <td><img src="../Assets/Files/RequestPhoto/<%=rs2.getString("request_photo")%>" height="120" width="120"></td>
                         <td><%=rs2.getString("address")%></td>
                         <td><%=rs2.getString("user_contact")%></td>
                         <td><%=rs2.getString("request_date")%></td>
                         
                          <td><a href="RequestAction.jsp?aid=<%=rs2.getString("workrequest_id")%>">Accept</a>
                         </td>
                     </tr>
                     <%
                 }
                     %>      
             </table>    
            
        </div>     
    </body>
</html>
