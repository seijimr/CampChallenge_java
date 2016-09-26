<%-- 
    Document   : task7-3
    Created on : 2016/09/26, 17:30:54
    Author     : morita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
  String sou=request.getParameter("soum");    
int soum=Integer.parseInt(sou);
if(soum>5000){
    out.print(soum*0.05+"ポイント");
}else if(soum>3000){
    out.print(soum*0.04+"ポイント");          
}else {
    out.print("0ポイント");
}
//?soum=30000
       %>
    </body>
</html>
