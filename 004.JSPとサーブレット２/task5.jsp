
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



----------------------------------------

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>

<%!
    Integer id1=991546;
    Integer id2=393241;
    Integer id3=251549;
    int id=251549;
     ArrayList list= new ArrayList();
ArrayList profile(){
    ArrayList list1= new ArrayList();
    list1.add(id1);
    list1.add("名前1");
    list1.add("生年月日1");
    list1.add("住所1");
    ArrayList list2= new ArrayList();
    list2.add(id2);
    list2.add("名前2");
    list2.add("生年月日2");
    list2.add("住所2");
    ArrayList list3= new ArrayList();
    list3.add(id3);
    list3.add("名前3");
    list3.add("生年月日3");
    list3.add("住所3");
    if(id==id1){
        ArrayList list = list1;
    }else if(id==id2){
   ArrayList list= list2;
}else if(id==id3){
       ArrayList list= list3;
        }
    return list;
}
%>

<%
    ArrayList list = profile();
    for(int i = 1; i < list.size(); i++){
    out.print(list.get(i) + "<br>");
    }
%>
