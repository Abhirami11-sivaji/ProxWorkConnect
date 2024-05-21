<%-- 
    Document   : WorkGalleryDisplay
    Created on : 24 Jan, 2024, 1:57:44 PM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>WorkGalleryDisplay</title>
    </head>
    <body>
        <%
        if(request.getParameter("did")!=null)
          {
              String delqry="delete from tbl_workpostgallery where workpostgallery_id='"+request.getParameter("did")+"'";
              con.executeCommand(delqry);
              response.sendRedirect("WorkGalleryDisplay.jsp?gid="+request.getParameter("gid"));
          }
        %>
                
        <div align="center">
        <h2>Image Gallery</h2>
         
        <form method="post">
        <table border="3" align="center">
               
                <tr>
                    <th>Sl.no</th>
                    <th>Photo</th>
                    <th>Action</th>
                    
                </tr>
        <%
                 String selqry = "select*from tbl_workpostgallery where workpost_id='"+request.getParameter("gid")+"'";  
                 ResultSet rs = con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td><%=i%></td>
                         <td><img src="../Assets/Files/WorkPostGallery/<%=rs.getString("gallery_image")%>" height="90" width="90"</td>
                         <td><a href="WorkGalleryDisplay.jsp?did=<%=rs.getString("workpostgallery_id")%>&gid=<%=request.getParameter("gid")%>">Delete</a></td>
                     </tr>
                     <%
                 }
                     %>      
             </table>
        </form>
             </div> 
    </body>
</html>
