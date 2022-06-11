<%-- 
    Document   : UserDisplay
    Created on : May 16, 2022, 7:56:50 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example of Implicit objects</title>
    </head>
    <body>
        <font face=Times New Roman size=3>
        Thank you for your submission. Your information has been
        successfully added to the database:
        <br>
        <br>
        <%
            String sUName = request.getParameter("uname");
            String sPName = request.getParameter("pname");
        %>
        User Name:<%=sUName%><br>
        Password:<%=sPName%><br>
        </font>
    </body>
</html>
