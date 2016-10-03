
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>

<%!
    int id1=95;
    int id2=391;
    int id3=249;
    int id=249;
     
ArrayList profile(int id){
  if(id==id1){
        ArrayList list= new ArrayList();
    list.add(id1);
    list.add("名前1");
    list.add("生年月日1");
    list.add("住所1");
    return list;
   }else if(id==id2){
    ArrayList list= new ArrayList();
    list.add(id2);
    list.add("名前2");
    list.add("生年月日2");
    list.add("住所2");
    return list;
   }else if(id==id3){
    ArrayList list= new ArrayList();
    list.add(id3);
    list.add("名前3");
    list.add("生年月日3");
    list.add("住所3");
    return list;
}else{
    return null;
}
}
%>

<%
    ArrayList list = profile(id);
    for(int i = 1; i < list.size(); i++){
    out.print(list.get(i) + "<br>");
    }
%>