<%-- 
    Document   : home
    Created on : May 29, 2022, 9:10:19 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
    </head>
    <body>
        <%
            String userName = (String) session.getAttribute("account_id");
        %>
        <h3 align ='center'>Welcome <%=userName%> </h3>
        While you are at the home page of MARKO Bank, please select
        any of the option given below<br>
        <br><br>
        <a href="redirecterServlet?action=Withdrawal">Withdrawal</a>
        <br>
        <a href="redirecterServlet?action=deposit">Deposit</a>
        <br>
        <a href="redirecterServlet?action=chq">Request for cheque
            book</a>
        <br>
        <a href="redirecterServlet?action=acclosure">Request for
            Account Closure</a>
        <br>
    </body>
</html>
