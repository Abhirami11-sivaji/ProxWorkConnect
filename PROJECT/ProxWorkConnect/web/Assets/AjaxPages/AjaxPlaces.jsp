<%-- 
    Document   : AjaxPlaces
    Created on : 7 Dec, 2023, 10:13:56 AM
    Author     : abhij
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<option value="">--select--</option>
<%
String selQ="select * from tbl_place where district_id='"+request.getParameter("pid")+"'";
ResultSet rs=con.selectCommand(selQ);
while(rs.next())
{
    %>
    <option value="<%=rs.getString("place_id")%>"><%=rs.getString("place_name")%></option>
    <%
}


%>