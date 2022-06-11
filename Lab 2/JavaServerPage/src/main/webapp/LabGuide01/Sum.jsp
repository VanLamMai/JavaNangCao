<%-- 
    Document   : Sum
    Created on : May 16, 2022, 7:20:00 AM
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
        <h1>Displaying sum</h1>
        <%
            int sum = 0;
            for(int num = 1; num <= 25; num++){
            sum = sum + num;
            }
            out.println("Sum of numbers from 1 to 25 is: "+sum);
            %>
    </body>
</html>
