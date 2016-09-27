<%-- 
    Document   : task7
    Created on : 2016/09/27, 13:26:37
    Author     : morita
--%>


               <%@page import="java.util.Arrays"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

               <!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        String t[]={"10","100","soeda","hayashi","-20","118","END"};
out.println(Arrays.toString(t));
%>
    </body>
</html>
