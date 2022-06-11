<%-- 
    Document   : SessionID
    Created on : May 16, 2022, 7:36:10 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
    </head>
    <body>
    <li> Today's date is: <%= new java.util.Date()%>
    <li> Sessions Id: <%= session.getId()%>
    </body>
</html>
