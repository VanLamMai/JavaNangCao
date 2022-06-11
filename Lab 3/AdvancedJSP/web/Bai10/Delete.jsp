<%-- 
    Document   : Delete
    Created on : May 29, 2022, 7:54:29 PM
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
        <h3>Details</h3>
        <table border="1"">
            <tr>
                <th>Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Delete</th>
            </tr>
            <%
                // Connect database
                String url = "jdbc:mysql://localhost:3306/";
                String driver = "com.mysql.cj.jdbc.Driver";
                String dbName = "bai9";
                String userName = "root";
                String password = "";
                
                try {
                    Class.forName(driver);
                    Connection connection = DriverManager.getConnection(url + dbName, userName, password);
                    Statement statement = connection.createStatement();
                    String query = "Select * from userdetails";
                    ResultSet rs = statement.executeQuery(query);
                    while (rs.next()) {
                        int id = rs.getInt("id");
                        String firstName = rs.getString("fisrtName");
                        String lastName = rs.getString("lastName");
                        String email = rs.getString("email");
            %>   
            <tr>
                <td><%=id%></td>
                <td><%=firstName%></td>
                <td><%=lastName%></td>
                <td><%=email%></td>
                <th><a href="Main.jsp?id=<%= id%>">Delete</a></td>
            </tr>
            <%
                    }

                } catch (Exception e) {
                    e.printStackTrace();
                }
            %>

        </table>
    </center>
</body>
</html>
