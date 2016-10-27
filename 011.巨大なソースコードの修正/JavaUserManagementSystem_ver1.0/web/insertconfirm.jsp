
<%@page import="jums.UserDataBeans"%>
<%@page import="jums.JumsHelper"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%
    HttpSession hs = request.getSession();
    UserDataBeans data = (UserDataBeans) hs.getAttribute("data");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録確認画面</title>
    </head>
    <body>

        <h1>登録確認</h1>
        名前:<%= data.getName()%><br>
        生年月日:<%= data.getYear() + "年" + data.getMonth() + "月" + data.getDay() + "日"%><br>
        種別:<%= data.getType()%><br>
        電話番号:<%= data.getTell()%><br>
        自己紹介:<%= data.getComment()%><br>
        上記の内容で登録します。よろしいですか？
        <form action="insertresult" method="POST">
            <input type="submit" name="yes" value="はい">
            <input type="hidden" name="ac2"  value="<%= hs.getAttribute("ac2")%>">
        </form>

        <form action="insert" method="POST">
            <input type="submit" name="no" value="登録画面に戻る">
        </form>
        <%=JumsHelper.getInstance().home()%>
    </body>
</html>
