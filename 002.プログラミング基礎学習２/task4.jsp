<%-- 
    Document   : task4
    Created on : 2016/09/27, 11:37:10
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
            String n="";
        for(int i=0;i<30;i++){
       n=n+"A";
        }
        out.println(n);
        %>
    </body>
</html>
