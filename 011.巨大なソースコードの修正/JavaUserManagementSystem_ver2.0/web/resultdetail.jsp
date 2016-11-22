<%@page import="base.querybeans"%>
<%@page import="jums.JumsHelper"
        import="jums.UserDataDTO" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    UserDataDTO udd = (UserDataDTO) request.getAttribute("resultData");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMSユーザー情報詳細画面</title>
        <script type="text/javascript" src="jums.js">
        </script>
        <jsp:include page="\WEB-INF\header.jsp"/>
        <link href="jums.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>詳細情報</h1>
        名前:<%= udd.getName()%><br>
        生年月日:<%= udd.getBirthday()%><br>
        種別:<%= udd.getType()%><br>
        電話番号:<%= udd.getTell()%><br>
        自己紹介:<%= udd.getComment()%><br>
        登録日時:<%= udd.getNewDate()%><br>
        <br>
        <div class="formcontainer">
            <div class="form">
                <form action="Update" method="POST" class="form">
                    <input type="submit" name="update" value="変更" style="width:100px">
                    <input type="hidden" name="mode" value="INPUT">
                </form>　
            </div>
            <div class="form">
                <form action="DeleteResult" method="POST" onsubmit="return deleteconfirm()" class="form">
                    <input type="submit" name="delete" value="削除" style="width:100px">
                    <input type="hidden" name="userID" value= "<%= udd.getUserID()%>">
                    <input type="hidden" name="acdr"  value="<%= session.getAttribute("acdr")%>">
                </form>
            </div>
        </div>
        <a href="SearchResult<%=querybeans.getQuerysearchresult()%>">検索結果へ戻る</a><br>

    </body>
</html>
