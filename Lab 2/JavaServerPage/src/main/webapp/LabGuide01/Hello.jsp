<%-- 
    Document   : Hello
    Created on : May 16, 2022, 7:00:20 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to our Website</title>
    </head>
    <body>
    <marquee><font size="3" color="#FF0033">Hello World!!</font></marquee>
    
    <font color ="#0000FF">Hostname: <%= request.getRemoteHost()%><br>
    <font color ="#0000FF">Sessions Id: <%= session.getId()%>
    </body>
</html>
