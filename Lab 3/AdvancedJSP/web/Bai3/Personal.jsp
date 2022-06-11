<%-- 
    Document   : Personal
    Created on : May 29, 2022, 1:49:24 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personal Details Form</title>
    </head>
    <body>
    <Center>
        <h1>Personal Details Form</h1>
        <form action="Details.jsp" method="post">
            First Name:
            &nbsp;&nbsp;&nbsp;<input type="text" name="fname">
            <br><br>
            Last Name:
            &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="lname">
            <br><br>
            Address:<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <textarea name="address" rows=3 cols=15></textarea>
            <br><br>
            City:
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;
            <input type="text" name="city">
            <br><br>
            State:
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" name="state">
            <br><br>
            <input type="submit" name="submit" value="Submit">
        </form>
    </Center>
    </body>
</html>
