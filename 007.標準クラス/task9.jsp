<%-- 
９．ファイルから自己紹介を読み出し、表示してください。
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*,java.text.*,java.io.*" %>
<%
File file = new File("C:\\newfile\\selfIntroduction.txt");
BufferedReader br = new BufferedReader(new FileReader(file));

String txt;
while((txt = br.readLine())!= null){
    out.print(txt);
}
br.close();
%>