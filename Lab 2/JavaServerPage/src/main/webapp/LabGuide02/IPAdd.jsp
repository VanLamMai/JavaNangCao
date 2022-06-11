<%-- 
    Document   : IPAdd
    Created on : May 16, 2022, 8:04:11 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>System Information</title>
    </head>
    <body>
        <h3>Details of Remote Computer:</h3><!-- comment -->
        <b>Computer Name:</b>:
        <br>
        <%=request.getRemoteHost()%>
        <br>
        <br>

        <b>IP Address:</b>:
        <br>
        <%=request.getRemoteAddr()%>
        <br>
    </body>
</html>
