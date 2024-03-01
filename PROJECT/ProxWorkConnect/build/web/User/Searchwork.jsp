<%-- 
    Document   : Searchwork
    Created on : 29 Feb, 2024, 11:07:43 PM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Searchwork</title>
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
                    <th>Work</th>
                    <th>Details</th>
                    <th>Duration</th>
                    <th>Name</th>
                    <th>Contact</th>
                    <th>Posted Date</th>
                    <th>Work</th>
                    <th>Booking</th>
                </tr>
                <%
                  if(request.getParameter("search")!=null){
                 String selectqry="select * from tbl_workpost p inner join tbl_worker w on w.worker_id=p.worker_id inner join tbl_workertype t on t.workertype_id=w.workertype_id inner join tbl_place pla on pla.place_id=w.place_id inner join tbl_district d on d.district_id=pla.district_id where w.place_id='"+request.getParameter("ddlplace")+"' and t.workertype_id='"+request.getParameter("ddltype")+"'";
                 ResultSet r=con.selectCommand(selectqry);
                
                 int i=0;
                 while(r.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td><%=i%></td>
                         <td><img src="../Assets/Files/WorkPostPhoto/<%=r.getString("workpost_image")%>" height="70" width="70"</td></td>
                         <td><%=r.getString("workpost_details")%></td>
                         <td><%=r.getString("workpost_duration")%></td>
                         <td><%=r.getString("worker_name")%></td>
                         <td><%=r.getString("worker_contact")%></td>
                         <td><%=r.getString("workpost_date")%></td>
                 
                 <td><a href=" ">View More Photos</a>
                 <td><a href=" ">Book Now</a>
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

