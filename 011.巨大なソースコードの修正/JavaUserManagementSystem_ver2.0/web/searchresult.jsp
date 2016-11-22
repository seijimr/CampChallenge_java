<%@page import="base.querybeans"%>
<%@page import="java.util.ArrayList"
        import="jums.JumsHelper"
        import="jums.UserDataDTO" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    ArrayList<UserDataDTO> list = new ArrayList<UserDataDTO>();
    list = (ArrayList<UserDataDTO>)request.getAttribute("resultData");
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS検索結果画面</title>
        <jsp:include page="\WEB-INF\header.jsp"/>
    </head>
    <body>
        <h1>検索結果</h1>
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
                <td><a href="ResultDetail?id=<%= list.get(i).getUserID()%>"><%= list.get(i).getName()%></a></td>
                <td><%= list.get(i).getBirthday()%></td>
                <td><%= jh.exTypenum(list.get(i).getType())%></td>
                <td><%= list.get(i).getNewDate()%></td>
            </tr>
           <% }%>
        </table>
        <a href="DeleteCollectively<%=querybeans.getQuerysearchresult()%>">まとめて削除</a><br>
        <a href="Search">検索画面へ戻る</a><br>
    </body>
    <%=jh.home()%>
</html>
