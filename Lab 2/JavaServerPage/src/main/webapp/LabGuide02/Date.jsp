<%-- 
    Document   : Date
    Created on : May 16, 2022, 8:02:38 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example of JSP Implicit Object</title>
        <%@ page import="java.util.Date" %>
    </head>
    <body bgcolor=#ffffff>
        <font color="Black">
        <h2> This example gives the Current Date </h2>
        <h3>
            <% response.setHeader("Refresh", "6");%>
            Current date: <%= new Date()%>.
        </h3>
    </body>
</html>
