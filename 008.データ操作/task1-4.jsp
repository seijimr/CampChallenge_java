
<!--　
１．以下の入力フィールドを持ったHTMLを、Javaで処理する想定で記述してください。
　　　・名前（テキストボックス）、性別（ラジオボタン）、趣味（複数行テキストボックス）
　２．以下の機能を実装してください。
　　　１で作成したHTMLの入力データを取得し、画面に表示する
　３．クッキーに現在時刻を記録し、次にアクセスした際に、前回記録した日時を表示してください。
　４．３と同じ機能をセッションで作成してください。
 -->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="javax.servlet.http.HttpSession"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>課題</title>
    </head>
    <body>
        <%
//            Date time = new Date();
//            Cookie c = new Cookie("LastLogin",time.toString());
//            response.addCookie(c);
//            
// Cookie cs[] = request.getCookies();
//    if (cs != null) {
//        for (int i=0; i<cs.length; i++) {
//            if (cs[i].getName().equals("LastLogin")) {
//                out.print("前回のログイン："+cs[i].getValue()+"<br><br>");
//                break;
//            }
//        }
//    }

       Date time = new Date();
       HttpSession hs = request.getSession(true);
       if (hs == null){
           hs.setAttribute("LastLogin", time.toString());
       } else {
           out.print("前回のログイン：" + hs.getAttribute("LastLogin") + "<br><br>");
           hs.setAttribute("LastLogin", time.toString());
       }

            %>
        <form action ="data.jsp" method="post">
            名前： <input type ="text" name ="name"><br>
            <p>
            性別：
            男<input type="radio" name ="sex" value = "男">
            女<input type="radio" name ="sex" value = "女">
            その他<input type="radio" name ="sex" value = "その他">
            </p>
            趣味：<br>
            <textarea name ="hobby"></textarea><br>
            <input type="submit" name="btnSubmit">
            
        </form>
    </body>
</html>
