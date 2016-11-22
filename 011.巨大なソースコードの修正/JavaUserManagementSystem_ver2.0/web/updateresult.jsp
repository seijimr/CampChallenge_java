<%@page import="java.text.SimpleDateFormat"%>
<%@page import="jums.UserDataDTO"%>
<%@page import="base.querybeans"%>
<%@page import="jums.JumsHelper" %>
<%
    JumsHelper jh = JumsHelper.getInstance();
    UserDataDTO origin = (UserDataDTO) request.getAttribute("origin");
    UserDataDTO result = (UserDataDTO) request.getAttribute("result");
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    boolean boolName = false;
    boolean boolBirthday = false;
    boolean boolType = false;
    boolean boolTell = false;
    boolean boolComment = false;
    boolean boolAll = false;
    if (!origin.getName().equals(result.getName())) {
        boolName = true;
    }
    if (!sdf.format(origin.getBirthday()).equals(sdf.format(result.getBirthday()))) {
        boolBirthday = true;
    }
    if (origin.getType() != result.getType()) {
        boolType = true;
    }
    if (!origin.getTell().equals(result.getTell())) {
        boolTell = true;
    }
    if (!origin.getComment().equals(result.getComment())) {
        boolComment = true;
    }
    if (!boolName && !boolBirthday && !boolType && !boolTell && !boolComment) {
        boolAll = true;
    }
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JUMS更新結果画面</title>
        <jsp:include page="\WEB-INF\header.jsp"/>
        <script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js?ver=4.3.6'></script>
        <link href="popup.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <h1>変更結果</h1><br>
        名前:<%=result.getName()%><br>
        生年月日:<%=sdf.format(result.getBirthday())%><br>
        種別:<%=jh.exTypenum(result.getType())%><br>
        電話番号:<%=result.getTell()%><br>
        自己紹介:<%=result.getComment()%><br>
        以上の内容で登録しました。<br>

        <p><a href="#popupi" class="popbtn">変更内容</a></p>
        <div id="popupi" class="popup">
            <div class="popupInner">
                <h4>変更内容</h4>
                <p>名前:<%=origin.getName()%>
                    <%if (boolName) {%>　→　<span id="red"><%=result.getName()%></span><%}%></p>
                <p>生年月日:<%=sdf.format(origin.getBirthday())%>
                    <%if (boolBirthday) {%>　→　<span id="red"><%=sdf.format(result.getBirthday())%></span><%}%></p>
                <p>種別:<%=jh.exTypenum(origin.getType())%>
                    <%if (boolType) {%>　→　<span id="red"><%=jh.exTypenum(result.getType())%></span><%}%></p>
                <p>電話番号:<%=origin.getTell()%>
                    <%if (boolTell) {%>　→　<span id="red"><%=result.getTell()%></span><%}%></p>
                <p>自己紹介:<%=origin.getComment()%>
                    <%if (boolComment) {%>　→　<span id="red"><%=result.getComment()%></span><%}%></p>
                <p><%if (boolAll) {%><span id="red">変更はありませんでした。</span><%}%>
                <div>
                    <a href="#closebtn" class="closebtn">閉じる</a>
                </div>
            </div>
        </div>
        <div id="overlay"></div>
        <script>
            (function ($) {
                $(function () {
                    $(document)
                            .on('click', '.popbtn', function () {
                                var $popup = $($(this).attr('href'));
                                var mT = ($popup.outerHeight() / -2) + 'px';
                                var mL = ($popup.outerWidth() / -2) + 'px';
                                $('.popup').hide();
                                $popup.css({
                                    'margin-top': mT,
                                    'margin-left': mL
                                }).show();
                                $('#overlay').show();
                                return false;
                            })
                            .on('click', '.closebtn, #overlay', function () {
                                $('.popup, #overlay').hide();
                                return false;
                            });
                });
            })(jQuery);
        </script>

        <a href="ResultDetail<%=querybeans.getQueryresultdetail()%>">詳細画面へ戻る</a><br>
        <%=jh.home()%>
    </body>
</html>
