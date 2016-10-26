<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
   session.invalidate();
   out.print("<div align=\"center\"><h1>ご利用ありがとうございました</h1></div>");
%>
<div align="center"> <a href="loginpage.jsp">ログインページへ戻る</a></div>
