<%-- 
    Document   : task2
    Created on : 2016/09/27, 11:03:05
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
            String a="A";
                   String mes="";
                   switch (a){
                       case "A":
                           mes="英語";
                           break;
                           case "あ":
                               mes="日本語";
                                       break;
                   }
                           out.println(mes);
                           %>
    </body>
</html>
