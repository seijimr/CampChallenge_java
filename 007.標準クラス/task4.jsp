<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*,java.text.*"%>
<%
Calendar cal=Calendar.getInstance();
   cal.set(2015,11,31,23,59,59);
   Date date = cal.getTime();
   
    
Calendar cal2 = Calendar.getInstance();
   cal2.set(2015,0,1,0,0,0);
   Date date2 = cal2.getTime();
out.println(date.getTime()+"-"+date2.getTime()+"="+(date.getTime() - date2.getTime())+"ms");
%>