<%-- 
    Document   : task6
    Created on : 2016/09/27, 13:03:11
    Author     : morita
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
       double n=1000;
       while(n>=100){
           n=n/2;
       }
       out.println(n);
       %>
      
    </body>
</html>
