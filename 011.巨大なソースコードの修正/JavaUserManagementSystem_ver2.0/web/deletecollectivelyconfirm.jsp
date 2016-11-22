<%-- 
    Document   : deletecollectivelyconfirm
    Created on : 2016/11/21, 19:13:13
    Author     : morita
--%>
<%@page import="base.querybeans"%>
<%@page import="java.util.ArrayList"%>
<%@page import="jums.UserDataDTO"%>
<%@page import="jums.JumsHelper"%>
<%
    JumsHelper jh = JumsHelper.getInstance();
    ArrayList<UserDataDTO> list = new ArrayList<UserDataDTO>();
    list = (ArrayList<UserDataDTO>) session.getAttribute("deletelist");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>削除確認</title>
        <jsp:include page="\WEB-INF\header.jsp"/>
    </head>
    <body>
        <h1>削除確認</h1>
        以下の内容を削除します。よろしいですか？
        <table border=1>
            <tr>
                <th>名前</th>
                <th>生年</th>
                <th>種別</th>
                <th>登録日時</th>
            </tr>
            <%
                for (int i = 0; i < list.size(); i++) {
            %>
            <tr>
                <td><a href="ResultDetail?id=<%= list.get(i).getUserID()%>" target="_blank"><%= list.get(i).getName()%></a></td>
                <td><%= list.get(i).getBirthday()%></td>
                <td><%= jh.exTypenum(list.get(i).getType())%></td>
                <td><%= list.get(i).getNewDate()%></td>
            </tr>
            <% }%>
        </table>
        <form action="DeleteCollectivelyResult">
        <input type="hidden" name="acd"  value="<%= session.getAttribute("acd")%>">
<input type="submit" value="はい">　<input type="button" value="いいえ" onclick="location.href='DeleteCollectively<%=querybeans.getQuerysearchresult()%>'">
        </form>
</body>
</html> 
