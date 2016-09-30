
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%!
    

    List<String> profile(String name, String birth, String intr){
    List<String> list = new ArrayList<String>();
    list.add("名前："+ name + "<br>");
    list.add("生年月日：" + birth + "<br>");
    list.add("自己紹介:" + intr + "<br>");
    
    return list;

}
%>
<%!
    boolean bool(){
   return true;
}
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
   
            
            List<String> list = profile("田中太郎","1219-10-9","hello");
            if(bool()==true){
           for(int i=0;i<10;i++){
               for(String e: list){
                out.print(e);
               }
                   }
           out.print("<br>「この処理は正しく実行できました」");
           }else{
                   out.print("<br>「正しく実行できませんでした」");
            }
            %> 
            
           

    </body>
</html>
