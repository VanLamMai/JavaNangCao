<%-- 
    Document   : AddItems
    Created on : Jun 4, 2022, 8:30:34 AM
    Author     : LENOVO
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <td>Book ID</td>
                <td>Book Name</td>
                <td>ISBN</td>
                <td>Publish Date</td>
                <td>Price</td>
                <td>Add to Cart</td>
            </tr>
            <%
                int id;
                String name, isbn, date;
                int price;
                for(int i=1;i<=10;i++){
                id = i;
                name = "Book " + i;
                isbn = "1234567890";
                date = "2/2/2022";
                price = 100*i;
                out.print("<tr>");
                out.print("<td>"+id+"</td>");
                out.print("<td>"+name+"</td>");
                out.print("<td>"+isbn+"</td>");
                out.print("<td>"+date+"</td>");
                out.print("<td>"+price+"</td>");
                out.print("<td><a href='/MVC/Controllers/CAddBook?id="+id+"&name="+name+"&isbn="+isbn+"&date="+date+"&price="+price+"'>Add</a></td>");
                out.print("</tr>");
            %>
        </table>
    </body>
</html>
