<%-- 
    Document   : Example
    Created on : May 29, 2022, 1:47:08 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example Page</title>
    </head>
    <body>
        <%@page isErrorPage="true" %>
        The error is:
        <%= exception %>
    </body>
</html>
