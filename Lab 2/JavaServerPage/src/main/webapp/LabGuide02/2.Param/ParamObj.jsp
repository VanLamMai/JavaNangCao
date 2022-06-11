<%-- 
    Document   : PramObj
    Created on : May 16, 2022, 8:07:23 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <div>
        <h2>Called page: </h2>
        <b>Names:</b>
        <br>
        Name1: <%= request.getParameter("param1")%>
        <br>
        Name2: <%= request.getParameter("param2")%>
        <br>
        Name3: <%= request.getParameter("param3")%>
        <br>
        
    </body>
</html>
