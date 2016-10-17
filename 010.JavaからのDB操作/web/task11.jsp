<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <LINK rel="SHORTCUT ICON" href="favicon.ico">
        <title>登録情報の変更</title>
    </head>
    <body>
        <form method = "post" action = "task11">
・変更したいID<br><input type ="text" name ="ID"><br><br>
・名前<br><input type = "text" name = "name"><br><br>
・連絡先<br><input type = "text" name = "tell"><br><br>
・生年月日<br>
<select name="year">
<option value="">--</option>
<%
    for (int y = 1900; y <= 2020; y++) {
      out.print("<option value=\"" + y + "\">" + y + "</option>");
  }
%>
</select>
年 
<select name="month">
<option value="">--</option>
<%
    for (int m = 1; m <= 12; m++) {
      out.print("<option value=\"" + m + "\">" + m + "</option>");
  }
%>
</select>
月 
<select name="day">
<option value="">--</option>
<%
    for (int d = 1; d <= 31; d++) {
      out.print("<option value=\"" + d + "\">" + d + "</option>");
  }
%>
</select>
日 <br><br>
・年齢<br>
<select name=age>
<option value="" selected>--</option>
<%
    for (int a = 0; a <= 120; a++) {
      out.print("<option value=\"" + a + "\">" + a + "歳" + "</option>");
  }
%>
</select>
<br><input type = submit value="変更"> 
       </form>
    </body>
</html>
