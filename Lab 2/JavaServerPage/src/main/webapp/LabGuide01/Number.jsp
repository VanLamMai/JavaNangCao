<%-- 
    Document   : Number
    Created on : May 16, 2022, 9:00:20 AM
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
        <%
            for (int num = 0; num <= 10; num++) {
                out.println("Hello" + num + "<br>");

            }
        %>
    </body>
</html>
