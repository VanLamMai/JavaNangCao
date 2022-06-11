<%-- 
    Document   : Series
    Created on : May 16, 2022, 8:39:02 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Displaying </h1>
        <%
            int res;
            int j = 2;
            for (int i = 1; i < 11; i++) {
                res = j * i;
                out.println(j + " * " + i + " = " + res);
                out.println("<br>");
            }
        %>
    </body>
</html>
