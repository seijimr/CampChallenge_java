<%@page import="jums.UserDataBeans"%>
<%@page import="javax.servlet.http.HttpSession" %>
<%@page import="jums.JumsHelper" %>
<%
    HttpSession hs = request.getSession();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    UserDataBeans data = (UserDataBeans) hs.getAttribute("data");
    if (data == null) { //dataになにもない時＝
        data = new UserDataBeans(); //初期値を設定
    }
    Boolean bool = false;
    if (session.getAttribute("error") != null) {
        bool = (Boolean) session.getAttribute("error");
    }
%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS登録画面</title>
    </head>
    <body>
        <form action="insertconfirm" method="POST">
            名前:
            <input type="text" name="name" value="<%=data.getName()%>">
            <br><%
                if (bool && data.getName().equals("")) {
                    out.print("<font color=#ff0000>名前を入力してください</font>");
                }%>
            <br><br>

            生年月日:　
            <select name="year">
                <option value="1950">1950</option>
                <%
                    for (int i = 1951; i <= 2010; i++) {%>
                <option value="<%=i%>" <% if (data.getYear() == i) {%>selected<%}%>> <%=i%> </option>
                <% } %>
            </select>年
            <select name="month">
                <option value="1" <% if (data.getMonth() == 1) {%>selected<%}%>>1</option>
                <%
                    for (int i = 2; i <= 12; i++) {%>
                <option value="<%=i%>" <% if (data.getMonth() == i) {%>selected<%}%>><%=i%></option>
                <% } %>
            </select>月
            <select name="day">
                <option value="1"<% if (data.getDay() == 1) {%>selected<%}%>>1</option>
                <%
                    for (int i = 2; i <= 31; i++) {%>
                <option value="<%=i%>" <% if (data.getDay() == i) {%>selected<%}%>><%=i%></option>
                <% } %>
            </select>日
            <br><br>

            種別:
            <br>
            <input type="radio" name="type" value="1" <% if (data.getType().equals("1")) {%>checked<%}%>>エンジニア<br>
            <input type="radio" name="type" value="2" <% if (data.getType().equals("2")) {%>checked<%}%>>営業<br>
            <input type="radio" name="type" value="3" <% if (data.getType().equals("3")) {%>checked<%}%>>その他<br>
            <br>

            電話番号:
            <input type="tel" name="tell" value="<%= data.getTell()%>" >
            <br>
            <%
             if (bool) {
                    if (data.getTell().equals("")) {
                        out.print("<font color=#ff0000>電話番号を入力してください</font>");
                    } else if (data.checkTellLengthInvalid() || data.checkTellInvalid(data.getTell())) {
                        out.print("<font color=#ff0000>電話番号を正確に入力してください</font>");
                    }
                }
            %>
            <br><br>

            自己紹介文
            <br>
            <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard" ><%=data.getComment()%></textarea><br><br>

            <input type="hidden" name="ac"  value="<%= hs.getAttribute("ac")%>">
            <input type="submit" name="btnSubmit" value="確認画面へ">
        </form>
        <br>
        <%=JumsHelper.getInstance().home()%>

    </body>
</html>
