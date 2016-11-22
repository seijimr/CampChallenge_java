
<%@page import="base.querybeans"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String query = "?name=&year=";
    if (querybeans.getQuerysearchresult() != null) {
        query = querybeans.getQuerysearchresult();
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>削除結果画面</title>
        <jsp:include page="\WEB-INF\header.jsp"/>
    </head>
    <body>
        <h1>削除確認</h1>
        削除しました。<br>
        <a href="SearchResult<%=query%>">検索画面へ戻る</a>
    </body>
</html>
