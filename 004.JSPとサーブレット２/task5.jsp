
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>

<%!
    Integer id=1291546849;
ArrayList profile(){
    ArrayList list= new ArrayList();
    list.add(id);
    list.add("名前");
    list.add("生年月日");
    list.add("住所");
    return list;
}
%>

<%
    ArrayList list = profile();
    for(int i = 1; i < list.size(); i++){
    out.print(list.get(i) + "<br>");
    }
%>

