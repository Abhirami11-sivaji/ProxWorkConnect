<%-- 
    Document   : Searchworker
    Created on : 15 Feb, 2024, 11:02:03 AM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Searchworker</title>
    </head>
    <body>
        <form method="post">
        <table border="3" align="center">
         <tr>
                    <td>District</td>
                    <td>
                        <select name="ddldis" onchange="getPlace(this.value)" required>
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
                        <select name="ddlplace" id="selplace" required>
                            <option>--select--</option>
                            
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Worker Type</td>
                    <td>
                        <select name="ddltype" required>
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
                        <input type="submit" name="search" value="Search">
                        <input type="reset" name="cancel" value="Cancel">
                    </td>
                </tr>
        </table><br>
                <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Photo</th>
                    <th>Name</th>
                    <th>Workertype</th>
                    <th>Contact</th>
                    <th>Works</th>
                    <th>Ratings</th>
                    <th>Request</th>
                </tr>
                <%
                  if(request.getParameter("search")!=null){
                 String selectqry="select * from tbl_worker w inner join tbl_place p on p.place_id=w.place_id inner join tbl_workertype t on t.workertype_id=w.workertype_id inner join tbl_district d on d.district_id=p.district_id where p.place_id='"+request.getParameter("ddlplace")+"' and t.workertype_id='"+request.getParameter("ddltype")+"'";
                 ResultSet r=con.selectCommand(selectqry);
                
                 int i=0;
                 while(r.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td><%=i%></td>
                         <td><img src="../Assets/Files/Workerphoto/<%=r.getString("worker_photo")%>" style="border-radius:50%" width="80" height="80"/><br /><br /></td>
                   <td><%=r.getString("worker_name")%></td> 
                 <td><%=r.getString("workertype_name")%></td> 
                 <td><%=r.getString("worker_contact")%></td> 
                 
                 <td><a href="ViewWork.jsp?sid=<%=r.getString("worker_id")%> ">View Works</a></td>
                 <td><a href="ViewReview.jsp?gid=<%=r.getString("worker_id")%> ">View Ratings</a></td>
                 <td><a href="Request.jsp?rid=<%=r.getString("worker_id")%>">Request Now</a></td>
                 </tr>
                  <%
                 }
                  }
                  %>
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
