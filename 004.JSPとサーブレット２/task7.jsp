
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
    int id[]={0,95,391,249};
    HashMap list= new HashMap();
            HashMap list2= new HashMap();
     HashMap profiles(int id){
  if(id==this.id[1]){
    list.put(1,this.id[1]);
    list.put("名前","名前1");
    list.put("生年月日","生年月日1");
    list.put("住所","住所1");
   }
  if(id==this.id[2]){
   list.put(2,this.id[2]);
    list.put("名前","名前2");
    list.put("生年月日","生年月日2");
    list.put("住所",null);
   }
  if(id==this.id[3]){
    list.put(3,this.id[3]);
    list.put("名前","名前3");
    list.put("生年月日","生年月日3");
    list.put("住所","住所3");
}
  return list;
}
%>

<%
   for(int i=1;i <= 3; i++){
       HashMap profile=profiles(id[i]);
       out.print(list.get("名前") + "<br>"); 
   out.print(list.get("生年月日") + "<br>"); 
    if(list.get("住所")==null){
        continue;
    }
   out.print(list.get("住所") + "<br>"); 
    }
%>