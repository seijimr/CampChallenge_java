
<%@page import="login.sec"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    sec s = new sec();
    s.sessionj(request, response);
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>在庫管理システム</title>
        <jsp:include page="\WEB-INF\header.jsp"/>
    </head>
    <body>
        <br>
        在庫管理システムへようこそ  <% out.print(session.getAttribute("name"));%>様
    </body>
</html>
