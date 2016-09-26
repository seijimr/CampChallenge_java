<%-- 
    Document   : lesson7
    Created on : 2016/09/26, 15:57:12
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
String shubetu1=request.getParameter("shubetu1"); //雑貨
String shubetu2=request.getParameter("shubetu2"); //生鮮食品
String shubetu3=request.getParameter("shubetu3"); //その他
out.println(shubetu1);
out.println(shubetu2);
out.println(shubetu3);
%>
    </body>
</html>
