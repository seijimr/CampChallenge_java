<%-- 
    Document   : task9
    Created on : 2016/09/27, 14:07:28
    Author     : morita
--%>

<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HashMap<String,String>ren=
                    new HashMap<String,String>();
            ren.put("1","AAA");
            ren.put("hello","world");
            ren.put("soeda","33");
            ren.put("20","20");
            out.println(ren.get("1"));
            out.println(ren.get("hello"));
            out.println(ren.get("soeda"));
            out.println(ren.get("20"));
            %>
    </body>
</html>
