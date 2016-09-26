<%-- 
    Document   : task7-2
    Created on : 2016/09/26, 16:22:48
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
    String kos=request.getParameter("kosm");
int kosm=Integer.parseInt(kos);
int soum=Integer.parseInt(sou);
out.println("1個"+soum/kosm+"円");
out.println("総額"+soum+"円"); //?kosm=30&soum=30000
       %>
    </body>
</html>
