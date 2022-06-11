<%-- 
    Document   : main
    Created on : May 29, 2022, 3:20:32 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
    </head>
    <body>
        <form action="process2.jsp" method="post">
            <center>Account Id
                <input type="text" name="account_id">
            </center>
            <center>Pin Number
                <input type="Pin Number" name="pin_number">
            </center>
            <center><input type="submit" name="Submit" value="Login"></center>
        </form>
    </body>
</html>
