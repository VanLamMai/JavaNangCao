<%-- 
    Document   : Insert
    Created on : May 29, 2022, 6:58:01 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*, java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adding Customer Details</title>
    </head>
    <body>
    <center>
        <%
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            // Connect database
            String url = "jdbc:mysql://localhost:3306/";
            String driver = "com.mysql.cj.jdbc.Driver";
            String dbName = "bai9";
            String userName = "root";
            String password = "";
            Statement statement;

            try {
                Class.forName(driver);
                Connection connection = DriverManager.getConnection(url + dbName, userName, password);
                if (connection != null) {
                    out.println("Success");
                }
                statement = connection.createStatement();
                String insert = "insert into UserDetails(fisrtName, lastName, email) values ('" + firstName + "', '" + lastName + "', '" + email + "');";
                int stmtInt = statement.executeUpdate(insert);
                out.print("Your Information is Added in our Database");
        %>
        <%
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </center>
</body>
</html>
