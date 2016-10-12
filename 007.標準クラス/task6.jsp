<%-- 
６．自分のメールアドレスの「@」以降の文字を取得して、表示してください。
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*,java.text.*"%>
<%
String mail = "mks51451@ezweb.ne.jp";
int index = mail.indexOf("@");
out.print("ドメイン："+mail.substring(index));
%>