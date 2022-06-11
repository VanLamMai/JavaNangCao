<%-- 
    Document   : display
    Created on : Jun 11, 2022, 8:10:37 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="MARKO" uri="Marko.tld" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
    <head>
        <title> MARKO </title>
    </head>
    
        <center><h1>Marko Bank Display Page</h1></center>
        <%
            String action = request.getParameter("data");
        if (action == null || action.equals(""))
        {
        %>
        <jsp:forward page="/index.jsp"/>
        <%
        }
        if (action.equals("customer"))
        {
        %>
        <customer/>
        <%
        }
        %>
        <%
        if (action.equals("branch")){
        %>
        <MARKO:branch />
        <%
        }
        %>
        <a href="javascript:hostory.back();">back</A>
    
</html>
