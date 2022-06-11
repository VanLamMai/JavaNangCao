<%-- 
    Document   : ErrorPage
    Created on : May 29, 2022, 2:00:02 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <%@page isErrorPage="true" %>
        The exception <font color="red"> <%=exception.getMessage()%>
        </font>
    </body>
</html>
