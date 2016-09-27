<%-- 
    Document   : task1
    Created on : 2016/09/27, 10:30:36
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
         int num=1; 
        String mes="";
       switch(num){
           case 1:
       mes="one";
       break;
           case 2:
       mes="two";
       break;
       default:
           mes="想定外";
           break;
       }
            out.println(mes);
           
       %>
    </body>
</html>
