<%-- 
    Document   : acclosure
    Created on : May 29, 2022, 9:10:38 PM
    Author     : LENOVO
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Account Closure</title>
    </head>
    <body>
        <%
            String userName = (String) session.getAttribute("UserName");
            java.util.Date d = new java.util.Date();
// ConnectDatabase
            String url = "jdbc:mysql://localhost:3306/";
            String driver = "com.mysql.cj.jdbc.Driver";
            String dbName = "bai9";
            String user = "root";
            String password = "";
            Statement statement;
            try {
                String id = request.getParameter("id");
                String delete_user = "delete from UserDetails(firstName, lastName, email) where id = " + id;

                Class.forName(driver);
                Connection connection = DriverManager.getConnection(url + dbName, user, password);
                statement = connection.createStatement();
                String query_car = "update userdetails set ClosureStatusChqStatus= 'Requested for Account Closure on"
                        + d.toString() + "' where UserName = '" + userName + "'";
                statement.execute(query_car);
            } catch (Exception e) {
                e.printStackTrace();
            }

        %>

        <h1 align='center'>Your Request is Recorded on
            <%=d.toString()%>...</h1>
        <br><br>
        <a href="redirecterServlet?action=home">Marko Home</a><br>
        <a href="redirecterServlet?action=Withdrawal">Withdrawal</a><br>
        <a href="redirecterServlet?action=deposit">Deposit</a><br>
        <a href="redirecterServlet?action=chq">Request for cheque book</a><br>
    </body>
</html>
