<%-- 
    Document   : Details
    Created on : May 29, 2022, 1:49:31 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example of Implicit Objects</title>
    </head>
    <body>
        <p>Thanks you for your submission. Confirm the details: </p>
        <br><br>
        <%
            String sfName = request.getParameter("fname");
            String slName = request.getParameter("lname");
            String saddress = request.getParameter("address");
            String sphone = request.getParameter("phone");
            String scity = request.getParameter("city");
            String sstate = request.getParameter("state");
        %>
        
        First Name: <%=sfName%><br>
        Last Name: <%=slName%><br>
        Address Name: <%=saddress%><br>
        Phone: <%=sphone%>
        City: <%=scity%>
        State:<%=sstate%>
    </body>
</html>
