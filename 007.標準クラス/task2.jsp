
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*,java.text.*"%>

<%
Calendar cal = Calendar.getInstance();
int year = cal.get(Calendar.YEAR);
int month = cal.get(Calendar.MONTH)+1;
int day = cal.get(Calendar.DAY_OF_MONTH);
int hour =cal.get(Calendar.HOUR);
int minute = cal.get(Calendar.MINUTE);
int second = cal.get(Calendar.SECOND);
out.print(year + "-" + month + "-" + day + " " + hour + ":" + minute + ":" + second);
%>