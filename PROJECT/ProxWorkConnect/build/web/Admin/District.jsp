<%-- 
    Document   : District
    Created on : 26 Oct, 2023, 12:34:03 PM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>District Page</title>
    </head>
    <body>
        <%
          if(request.getParameter("save")!=null)
          {
              if(request.getParameter("disid").equals(""))
              {   
              String insqry="insert into tbl_district(district_name)values('"+request.getParameter("disname")+"')";
              con.executeCommand(insqry);
              }
              else
              {
                  String upqry="update tbl_district set district_name='"+request.getParameter("disname")+"' where district_id='"+request.getParameter("disid")+"'";
                  con.executeCommand(upqry);
                  response.sendRedirect("District.jsp");
              }
          }
          if(request.getParameter("did")!=null)
          {
              String delqry="delete from tbl_district where district_id='"+request.getParameter("did")+"'";
              con.executeCommand(delqry);
              response.sendRedirect("District.jsp");
          }
          String editid="";
          String editname="";
          if(request.getParameter("eid")!=null)
          {
              String selqry1="select * from tbl_district where district_id='"+request.getParameter("eid")+"'";  
              ResultSet rs1=con.selectCommand(selqry1);
              rs1.next();
              editid=rs1.getString("district_id");
              editname=rs1.getString("district_name");
          }
        %>
        <form method="post">
            <table border="3" align="center">
                <tr>
                <td>District</td>
                <td><input type="text" name="disname" value="<%=editname%>" placeholder="Enter name">
                    <input type="hidden" name="disid" value="<%=editid%>">
                </td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="save" value="Save">
                    <input type="reset" name="cancel" value="Cancel"></td>
                </tr>
            </table><br>
            <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>District</th>
                    <th>Action</th>
                </tr>
                <%
                 String selqry="select * from tbl_district";
                 ResultSet rs=con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td><%=i%></td>
                         <td><%=rs.getString("district_name")%></td>
                          <td><a href="District.jsp?did=<%=rs.getString("district_id")%>">Delete</a>
                         |<a href="District.jsp?eid=<%=rs.getString("district_id")%>">Edit</a></td>
                     </tr>
                     <%
                 }
                     %>      
                    
            </table>
        </form>
    </body>
</html>
