<%-- 
    Document   : Details
    Created on : May 29, 2022, 6:57:54 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Details Page</title>
    </head>
    <body>
        <h1>User Details</h1>
        <form action="Insert.jsp" method="post">
            <table>
                <tr>
                    <td align="right">First Name: </td>
                    <td><input type="text" name="firstName" size="30"></td>
                </tr>
                <tr>
                    <td>Last Name: </td>
                    <td><input type="text" name="lastName" size="30"></td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td><input type="email" name="email" size="30"></td>
                </tr>
            </table><br>
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>
