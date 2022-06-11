<%-- 
    Document   : session
    Created on : May 29, 2022, 3:08:19 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Bai7.SessionCount" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Session Page</title>
    </head>
    <body>
        <h1>Session</h1>
        There are currently 
        <%=Bai7.SessionCount.getNumberOfSessions()%> active sessions
    </body>
</html>
