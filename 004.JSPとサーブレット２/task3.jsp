<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
out.print(i(5,9,false));
%>

<%!
Integer i(Integer n,Integer n2,boolean type){
    Integer n3 = n*n2;
    if(type == true){
        n3=n3*n3;
    }
    
    
    return n3;
}
%>

