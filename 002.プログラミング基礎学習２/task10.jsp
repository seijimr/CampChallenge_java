<%-- 
    Document   : task10
    Created on : 2016/09/27, 14:58:54
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
        String soi = request.getParameter("param1");//?param1=
        int bun = Integer.parseInt(soi);
        int i=2;
        out.println("元の値="+soi);
        out.println("1ケタの素因数=");
        while(bun!=1){
         if(bun%i==0&&i<10) 
         {out.println(i);
         bun/=i;
         }else if(bun%i==0&&i>=10)
         {out.println("その他="+i);
         bun/=i;
         }else i++;
        }
        %>
    </body>
</html>
