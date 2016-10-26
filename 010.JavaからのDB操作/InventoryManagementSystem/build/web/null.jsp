<%@page import="login.sec"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <% 
        sec s =new sec();
    s.sessionj(request, response);
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="\WEB-INF\header.jsp"/>
        <title>工事中</title>
    </head>
    <body>
        <br>
        この機能は実装されていません
    </body>
</html>
