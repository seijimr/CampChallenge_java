<%-- 
７．以下の文章の「I」⇒「い」に、「U」⇒「う」に入れ替える処理を作成し、
　　結果を表示してください。
　　「きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます」
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*,java.text.*"%>
<%
String phphagakushuusitenai = "きょUはぴIえIちぴIのくみこみかんすUのがくしゅUをしてIます";
phphagakushuusitenai = phphagakushuusitenai.replace("I","い");
phphagakushuusitenai = phphagakushuusitenai.replace("U","う");
out.print(phphagakushuusitenai);
%>