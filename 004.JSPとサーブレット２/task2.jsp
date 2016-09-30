<%-- 
    Document   : task2
    Created on : 2016/09/30, 13:33:16
    Author     : morita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String even(int num){
    if((num&1) == 0){
        return "偶数です";
    }
    else{
        return "奇数です";
    }
}
    %>
    
<%
    int number = 292;
    String result = even(number);
    out.println(result);
%>
