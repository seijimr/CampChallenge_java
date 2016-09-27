<%-- 
    Document   : task3
    Created on : 2016/09/27, 11:10:48
    Author     : morita
--%>
<%
    long n = 1;
    for(int i = 0; i < 10; i++){
        n *= 8;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%=n%>
    </body>
</html>
