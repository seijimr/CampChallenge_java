<%-- 
８．ファイルに自己紹介を書き出し、保存してください。
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*,java.text.*,java.io.*" %>

   <%
    File dir = new File("C:\\newfile");
    File file = new File("C:\\newfile\\selfIntroduction.txt");
    dir.mkdir(); //フォルダの作成
    file.createNewFile();//ファイルの作成
    
    BufferedWriter bw = new BufferedWriter(new FileWriter(file, true));
    
    bw.write("私の誕生日は11月4日です。誕生日プレゼント期待してます。");
    bw.close();
%>