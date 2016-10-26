<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //ログインページにアクセスした際に既にログインしていればトップへ
    String log = (String) session.getAttribute("loginnow");
    if (log != null && log.equals("YES")) {
        response.sendRedirect("top.jsp");
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="SHORTCUT ICON" href="Amazon.ico">
        <link rel="stylesheet" type="text/css" href="form.css">
        <title>ログインページ</title>
    </head>
    <body>

        <div align="center"><h1>在庫管理システム</h1></div>

        <div id="form">
            <form method = "post" action="filter">
                <p>ユーザーID</p>
                <p class="ID"><input type="text" name="ID" placeholder="userID" /></p>
                <p>パスワード</p>
                <p class="pass"><input type="password" name="pass" placeholder="password" /></p>
                    <%
                        //ログインに失敗した時の処理
                        if (log != null && log.equals("NO")) {
                            out.print("<font color = red>IDまたはパスワードが間違っています。</font>");
                            session.invalidate();
                        }
                    %>
                <p class="submit"><input type="submit" value="ログイン" />

            </form>
        </div>
    </body>
</html>
