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
        <style>
        .fa-heart {
            font-size: 20px;
            margin-left: -76px;
            margin-right: 55px;
            cursor: pointer;
        }
        .red {
            color: red;
        }
    </style>
    <script>
        function toggleHeartColor(element) {
            element.classList.toggle('red');
        }
    </script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            .cont {
                    display: flex;
                    width: 200px;
                    justify-content: space-between;
            }
            .sub {
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                    gap: 7px;
                    padding: 22px;
                    background-color: #E1F5FE;
                    border-radius: 17px;
            }
            .main {
                    display: flex;
                    flex-wrap: wrap;
                    justify-content: center;
                    align-items: center;
                    gap: 2rem;
            }
        </style>
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
        <div class="main">
        <%
                  String selectqry="select * from tbl_workpost p inner join tbl_worker w on w.worker_id=p.worker_id inner join tbl_workertype t on t.workertype_id=w.workertype_id inner join tbl_place pla on pla.place_id=w.place_id inner join tbl_district d on d.district_id=pla.district_id";
                  if(request.getParameter("search")!=null){
                 selectqry="select * from tbl_workpost p inner join tbl_worker w on w.worker_id=p.worker_id inner join tbl_workertype t on t.workertype_id=w.workertype_id inner join tbl_place pla on pla.place_id=w.place_id inner join tbl_district d on d.district_id=pla.district_id where w.place_id='"+request.getParameter("ddlplace")+"' and t.workertype_id='"+request.getParameter("ddltype")+"'";
                  }
                 ResultSet r=con.selectCommand(selectqry);
                
                 int i=0;
                  int amt,perc,total=0;
                  
                 while(r.next())
                 {
                     i++;
                  String worker_amt=r.getString("workpost_amount");
                  amt = Integer.parseInt(worker_amt);
                  perc=(amt/100)*5;
                  total=amt+perc;
                     %>
                     
                         <div class="sub">
                             <div><img src="../Assets/Files/WorkPostPhoto/<%=r.getString("workpost_image")%>" height="120" width="120"></div>
                             <div class="cont"><div>Details</div><div><%=r.getString("workpost_details")%></div></div>
                             <div class="cont"><div>Duration</div><div><%=r.getString("workpost_duration")%></div></div>
                             <div class="cont"><div>Estimated Amount*</div><div><%out.println(total);%></div></div>
                             <div class="cont"><div>Worker</div><div><%=r.getString("worker_name")%></div></div>
                             <div class="cont"><div>Contact</div><div><%=r.getString("worker_contact")%></div></div>
                             <div class="cont"><div>Post Date</div><div><%=r.getString("workpost_date")%></div></div>
                             <div><a href="ViewWorkGallery.jsp?sid=<%=r.getString("workpost_id")%> ">View Gallery</a></div>
                             <div><a href="ViewReviewWork.jsp?gid=<%=r.getString("workpost_id")%> ">View Ratings</a></div>
                             <div>
                                    <%
                                     String clr = "";
                                     String post_id=r.getString("workpost_id");
                                     String sqry="select count(*) as count from tbl_wishlist where workpost_id='"+post_id+"' and user_id='"+session.getAttribute("uid")+"'";
                                     //out.print(sqry);
                                     ResultSet rs=con.selectCommand(sqry);   
                                     rs.next();
                                     int count = Integer.parseInt(rs.getString("count"));
                                     if(count>0)
                                     {
                                     clr = "red";
                                     }
                                     %>
                                     <i class="fa-regular fa-heart <%=clr%>" style="font-size: 20px;font-size: 20px;margin-left: -76px;margin-right: 55px;" onclick="wishList(<%=r.getString("workpost_id")%>),toggleHeartColor(this)"></i>
                                  <a href="Booking.jsp?bid=<%=r.getString("workpost_id")%> ">Book Now</a></div>
                         </div>
                     <%
                 }
                
                  %>
                   </div>
                   <h4 align="center">*Terms and conditions: From the estimated amount, 5% will be retained by the company.</h4>                  
    </form>
    </body>
    <script src="../Assets/JQuery/jQuery.js"></script>         
                            <script>
                              function getPlace(did)
                            {                                                    
                                $.ajax({url:"../Assets/AjaxPages/AjaxPlaces.jsp?pid=" + did,
                                success: function(result){
                                    $("#selplace").html(result);
                                }
                            })
                            }
                           
                        </script>
                        <script src="../Assets/JQuery/jQuery.js"></script>         
                            <script>
                              function wishList(did)
                            {
                                $.ajax({url:"../Assets/AjaxPages/AjaxWishlist.jsp?pid=" + did,
                                success: function(result){
                                    
                                }
                            })
                            }
                           
                        </script>
</html>

