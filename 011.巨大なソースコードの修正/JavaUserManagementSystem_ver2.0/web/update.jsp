<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="jums.UserDataDTO"%>
<%@page import="java.util.Calendar"%>
<%@page import="jums.JumsHelper" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    Calendar cal = Calendar.getInstance();
    boolean input = false;
    UserDataDTO udd = null;
    int year = 0;
    int month = 0;
    int day = 0;
    if (request.getParameter("mode") != null && request.getParameter("mode").equals("INPUT")) {
        input = true;
        udd = (UserDataDTO) session.getAttribute("updateset");
        //UDDのbirthdayから年月日をそれぞれ取得
        SimpleDateFormat sdfy = new SimpleDateFormat("yyyy");
        String datey = sdfy.format(udd.getBirthday());
        year = new Integer(datey);
        SimpleDateFormat sdfm = new SimpleDateFormat("MM");
        String datem = sdfm.format(udd.getBirthday());
        datem.replaceFirst("^0+", "");//頭の0を抜く
        month = new Integer(datem) ;
        SimpleDateFormat sdfd = new SimpleDateFormat("dd");
        String dated = sdfd.format(udd.getBirthday());
        day = new Integer(dated);
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS変更画面</title>
        <script type="text/javascript" src="jums.js">
        </script>
        <link href="jums.css" rel="stylesheet" type="text/css">
        <jsp:include page="\WEB-INF\header.jsp"/>
    </head>
    <body><br>
        <form action="UpdateResult" method="POST" onsubmit="return updateconfirm()">
            名前:
            <input type="text" name="name" 
                   value="<% if (input) { out.print(udd.getName());}%>" onchange="CheckNameForm(this.value);" required>
            <div id="name">名前を入力してください</div>

            生年月日:　
            <select name="year" onchange="CheckBirthForm(this.value);" required>
                <option value="">----</option>
                <% for (int i = cal.get(Calendar.YEAR) - 70; i <= cal.get(Calendar.YEAR); i++) {%>
                <option value="<%=i%>" <% if (input && year == i) {%>selected<%}%>><%=i%></option>
                <% } %>
            </select>年
            <select name="month" onchange="CheckBirthForm(this.value);" required>
                <option value="">--</option>
                <% for (int i = 1; i <= 12; i++) {%>
                <option value="<%=i%>" <% if (input && month == i) {%>selected<%}%>><%=i%></option>
                <% } %>
            </select>月
            <select name="day" onchange="CheckBirthForm(this.value);" required>
                <option value="">--</option>
                <% for (int i = 1; i <= 31; i++) {%>
                <option value="<%=i%>" <% if (input && day == i) {%>selected<%}%>><%=i%></option>
                <% } %>
            </select>日
            <br><div id="birth">生年月日を選択してください</div>

            種別:
            <br>
            <% for (int i = 1; i <= 3; i++) {%>
            <input type="radio" name="type" 
                   value="<%=i%>" <%if (input && udd.getType() == i) {%>checked<%}%> required><%=jh.exTypenum(i)%><br>
            <% } %>
            <br>

            電話番号:
            <input type="text" name="tell" 
                   value="<% if (input) {out.print(udd.getTell());}%>" onchange="CheckTellForm(this.value);" required>
            <br><div id="tell">電話番号を入力してください</div><br>

            自己紹介文
            <br>
            <textarea name="comment" rows=10 cols=50 style="resize:none" wrap="hard">
<% if (input) {out.print(udd.getComment());}%></textarea><br><br>
           <input type="hidden" name="acu"  value="<%= session.getAttribute("acu")%>">
            <input type="submit" name="btnSubmit" value="更新する">
        </form>
        <br>
        <%=jh.home()%>
    </body>
</html>
