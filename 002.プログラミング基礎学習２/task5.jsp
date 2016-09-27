<%-- 
    Document   : task5
    Created on : 2016/09/27, 11:44:22
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
       int a=0;
       for(int n=0;n<=100;n++){
          a=a+n;
       }
       out.println(a);
             %>
    </body>
</html>
