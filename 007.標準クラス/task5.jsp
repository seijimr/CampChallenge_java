<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*,java.text.*"%>
<%-- 
5．自分の氏名について、バイト数と文字数を取得して、表示してください。
--%>

<%
String name="森田　誠志";
String trimname=name.replace(" ","");
trimname=trimname.replace("　","");//空白の除去
int nameLength=trimname.length();
int nameBytesLength=trimname.getBytes().length;
out.print("名前："+name+"<br>");
out.print("文字数："+nameLength+"<br>");
out.print("バイト数："+nameBytesLength);
%>