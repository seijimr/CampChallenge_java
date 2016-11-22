<%-- 
    Document   : deletecollectively
    Created on : 2016/11/21, 17:42:25
    Author     : morita
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="jums.UserDataDTO"%>
<%@page import="jums.JumsHelper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    JumsHelper jh = JumsHelper.getInstance();
    ArrayList<UserDataDTO> list = new ArrayList<UserDataDTO>();
    list = (ArrayList<UserDataDTO>) session.getAttribute("resultData");
%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>複数削除</title>
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
    <jsp:include page="\WEB-INF\header.jsp"/>
    </head>
    <body>
        <jsp:include page="\WEB-INF\header.jsp"/>
        <br>
        削除したいユーザーにチェックを入れてください
        <form action="DeleteCollectivelyConfirm" >
            <table border=1>
                <tr>
                    <th><input type = "checkbox"  id="all"></th>
                    <th>名前</th>
                    <th>生年</th>
                    <th>種別</th>
                    <th>登録日時</th>
                </tr>
                <%
                    for (int i = 0; i < list.size(); i++) {
                %>
                <tr>
                    <td><input type = "checkbox" name="user<%=i%>" value="1"
                               <% if (session.getAttribute("user" + i) != null) {
                                       if ((Boolean) session.getAttribute("user" + i)) {%>checked<%}
                          }%>></td>
                    <td><a href="ResultDetail?id=<%= list.get(i).getUserID()%>" target="_blank"><%= list.get(i).getName()%></a></td>
                    <td><%= list.get(i).getBirthday()%></td>
                    <td><%= jh.exTypenum(list.get(i).getType())%></td>
                    <td><%= list.get(i).getNewDate()%></td>
                </tr>
                <% }%>
            </table>
            <!--全選択のスクリプト-->
            <script type="text/javascript" >
                $('#all').on('change', function () {
                    $('input[value=1]').prop('checked', this.checked);
                });
            </script>

            <input type="hidden" name="acd"  value="<%= session.getAttribute("acd")%>">
            <button type="submit" name="action" value="send">削除</button>
        </form>
    </body>
</html>
