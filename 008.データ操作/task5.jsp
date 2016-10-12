<%-- 
5．以下の機能を実装してください。

　　　名前・性別・趣味を入力するページを作成してください。
　　　また、入力された名前・性別・趣味を記憶し、次にアクセスした際に
　　　記録されたデータを初期値として表示してください。
　　　
　　　※Javaと同時に、HTMLの知識が必要になります。
　　　※入力フィールドの使い方を調べてみましょう。
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>課題5</title>
    </head>
    <body>
        <%
        HttpSession hs = request.getSession(true);
        String gen = "";
        if(hs.getAttribute("sGender") != null) {
         gen = (String)hs.getAttribute("sGender");
        }
        //初期アクセス時にnullが初期値として表示される対策
        String nam = "";
        String hob = "";
        if(hs.getAttribute("sName") != null) {
         nam = (String)hs.getAttribute("sName");
        }
        if(hs.getAttribute("sHobby") != null){
         hob = (String)hs.getAttribute("sHobby");
        }
        %>
       
        <form action ="data.jsp" method = "post">
            ・名前<br>
            <input type = "text" name="name" value = "<%= nam %>"><br>
            <p>
                ・性別<br>
                男：<input type = "radio" name = "gender" value ="男" <% if(gen.equals("男")){%>checked<%}%>>
                女：<input type = "radio" name = "gender" value ="女" <% if(gen.equals("女")){%>checked<%}%>>
                その他：<input type = "radio" name = "gender" value ="その他" <% if(gen.equals("その他")){%>checked<%}%>><br>
            </p>
            ・趣味<br>
            <textarea name = "hobby" cols = "70" rows = "10" ><%= hob %></textarea><br>
            <input type="submit" value="送信"> 
        </form>
    </body>
</html>
