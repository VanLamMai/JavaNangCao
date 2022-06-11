<%-- 
    Document   : chq
    Created on : May 29, 2022, 9:10:28 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checque Page</title>
    </head>
    <body>
        <%
            String userName = (String) session.getAttribute("UserName");
            java.util.Date date = new java.util.Date();
            try {
                String url = "jdbc:mysql://localhost:3306/";
                String driver = "com.mysql.cj.jdbc.Driver";
                String dbName = "bai9";
                String user = "root";
                String password = "";
                
                Class.forName(driver);
                java.sql.Connection connection = java.sql.DriverManager.getConnection(url + dbName, user, password);
                java.sql.Statement statement = connection.createStatement();
                String query_car = "update userdetails set ChqStatus ='Requested for checque on" + date.toString() + "'where UserName = '" + userName + "'  ";

                statement.execute(query_car);
            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
        <h1 align='center'>Your Request is Recorded on
            <%=date.toString()%>...</h1>
        <br><br>
        <a href="redirecterServlet?action=home">Marko Home</a><br>
        <a href="redirecterServlet?action=Withdrawal">Withdrawal</a>
        <br>
        <a href="redirecterServlet?action=deposit">Deposit</a>
        <br>
    </body>
</html>
