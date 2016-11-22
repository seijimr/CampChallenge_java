<%@page import="java.util.Calendar"%>
<%@page 
        import="jums.JumsHelper" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    Calendar cal = Calendar.getInstance();
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMSユーザー情報検索画面</title>
        <jsp:include page="\WEB-INF\header.jsp"/>
    </head>
    <body><br>
         <form action="SearchResult" method="GET">
        名前:
        <input type="text" name="name">
        <br><br>

        生年:　
        <select name="year">
            <option value="">----</option>
            <% for(int i=cal.get(Calendar.YEAR)-100; i<=cal.get(Calendar.YEAR); i++){ %>
            <option value="<%=i%>"><%=i%></option>
            <% } %>
        </select>年生まれ
        <br><br>
 
        種別:
        <br>
            <% for(int i = 1; i<=3; i++){ %>
            <input type="radio" name="type" value="<%=i%>"><%=jh.exTypenum(i)%><br>
            <% } %>
        <br>

        <input type="submit" name="btnSubmit" value="検索" >
    </form>
        <br>
        <%=jh.home()%>
    </body>
</html>
