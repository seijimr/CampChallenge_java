<%@page import="login.sec"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    sec s = new sec();
    s.sessionj(request, response);
    String reg = (String) session.getAttribute("reg");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>商品登録</title>
        <link rel="stylesheet" type="text/css" href="form.css">
        <jsp:include page="\WEB-INF\header.jsp"/>
    </head>
    <body>
        <div id="form">
            <form method = "post" action="register">
                <p>商品名</p>
                <p class="name"><input type="text" name="name" /></p>
                <p>価格</p>
                <p class="price"><input type="number" name="price" />円</p>
                <p>在庫</p>
                <p class="stock"><input type="number" name="stock" />個</p>
                    <%
                        //入力漏れと登録成功時の処理
                        if (reg != null) {
                            if (reg.equals("miss")) {
                                out.print("<font color = red>必ず全ての項目を入力してください。</font>");
                            } else if (reg.equals("success")) {
                                out.print("<font color = red>登録に成功しました。</font>");
                            }
                            session.removeAttribute("reg");
                        }
                    %>
                <p class="submit"><input type="submit" value="登録" />
            </form>
        </div>
    </body>
</html>
