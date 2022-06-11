<%-- 
    Document   : Exception
    Created on : May 29, 2022, 1:46:08 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exception</title>
    </head>
    <body>
        <%@page errorPage="Example.jsp" %>
        Example for Null Pointer Exception:
        <%
            String s = null;
            s.length();
        %>
    </body>
</html>
