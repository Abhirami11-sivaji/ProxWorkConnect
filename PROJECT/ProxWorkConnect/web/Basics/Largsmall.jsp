<%-- 
    Document   : Largsmall
    Created on : 26 Oct, 2023, 11:58:03 AM
    Author     : abhij
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
          int num1=0,num2=0,num3=0,largest=0,smallest=0;
          if(request.getParameter("result")!=null)
          {
            num1=Integer.parseInt(request.getParameter("num1"));
            num2=Integer.parseInt(request.getParameter("num2"));
            num3=Integer.parseInt(request.getParameter("num3"));
            if(num1>num2)
            {
                if(num1>num3)
                    largest=num1;
                else
                    largest=num3;
            }
            else
            {
                if(num2>num3)
                    largest=num2;
                else
                    largest=num3;
            }
            if(num1<num2)
            {
                if(num1<num3)
                    smallest=num1;
                else
                    smallest=num3;
            }
            else
            {
                if(num2<num3)
                    smallest=num2;
                else
                    smallest=num3;
            }
          }
          
        %>
        <form method="post">
            <table border="3">
                <tr>
                    <td>Enter number 1</td>
                    <td><input type="text" name="num1" value="<%=num1%>"></td>
                </tr>
                <tr>
                    <td>Enter number 2</td>
                    <td><input type="text" name="num2" value="<%=num2%>"></td>
                </tr>
                <tr>
                    <td>Enter number 3</td>
                    <td><input type="text" name="num3" value="<%=num3%>"></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="result" value="Result"</td>
                </tr>
                
                <tr>
                <td>Largest</td>
                <td><%=largest%></td>
                </tr>
                
                <tr>
                <td>Smallest</td>
                <td><%=smallest%></td>
                </tr>
                
                
            </table>
        </form>
    </body>
</html>
