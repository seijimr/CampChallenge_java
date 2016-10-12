
<%@page contentType="text/html" pageEncoding="UTF-8"
        import="java.util.*,java.text.*"%>

<%
    Calendar a=Calendar.getInstance();
    a.set(2016,0,1,0,0,0);
    Date date=a.getTime();
    out.print(date);
    %>