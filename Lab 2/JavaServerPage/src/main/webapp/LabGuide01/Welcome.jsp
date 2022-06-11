<%-- 
    Document   : Welcome
    Created on : May 16, 2022, 7:41:10 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Online Banking</title>
    </head>
    <body>
        <% String user = request.getParameter("user");%>
        <h3>Welcome <%=(user == null)? "to Online Banking" : user.toString() + " to Online Banking"%></h3>
        <b>Enter name:</b>
        <form method=get>
            <input type="text" name="user" size=15>
            <input type="submit" value="Submit name">
        </form>
    </body>
</html>
