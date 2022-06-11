<%-- 
    Document   : Main
    Created on : May 29, 2022, 7:54:48 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*, java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Details</title>
    </head>
    <body>
    <center>
        <%
            String id = request.getParameter("id");
            String delete_user = "delete from UserDetails where id = " + id ;

            // ConnectDatabase
            String url = "jdbc:mysql://localhost:3306/";
            String driver = "com.mysql.cj.jdbc.Driver";
            String dbName = "bai9";
            String userName = "root";
            String password = "";
            Statement statement;
        %>
        <%
            try {
                Class.forName(driver);
                Connection connection = DriverManager.getConnection(url + dbName, userName, password);
                statement = connection.createStatement();
                int rowDelete = statement.executeUpdate(delete_user);

                if (rowDelete == 1) {
        %>
        <h2>Details of User <%= id%> deleted</h2>
        <%
        } else {
        %>
        <h2>Insertion failure</h2>
        <%
                }
            } catch (Exception e) {
            }
        %>
    </center>
</body>
</html>
