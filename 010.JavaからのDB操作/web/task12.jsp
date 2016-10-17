<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <LINK rel="SHORTCUT ICON" href="googleg_lodp.ico">
        <title>Google</title>
    </head>
    <body>
        <form method = "post" action = "task12">
            <B><font size=5 color="blue">G</font><font size=5 color="red">o</font><font size=5 color="yellow">o</font><font size=5 color="blue">g</font><font size=5 color="green">l</font><font size=5 color="red">e</font></B>
            <br>・名前<br><input type = "text" name = "name"><br><br>
            ・年齢<br><input type = "text" name = "age"><br><br>
            ・誕生日<br>
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
日 <br>
            <p>
                AND<input type ="radio" name ="andor" value="and">
                OR<input type ="radio" name ="andor" value="or">    
            </p>
            <input type = submit value="検索"> 
       </form>
    </body>
</html>
