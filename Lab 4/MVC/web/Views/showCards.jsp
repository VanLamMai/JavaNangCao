<%-- 
    Document   : showCards
    Created on : Jun 4, 2022, 8:35:26 AM
    Author     : LENOVO
--%>

<%@page import="java.util.List"%>
<%@page import="Models.MBook"%>
<%@page import="Models.Book"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            MBook items = new MBook();
            List<Book> list = items.getAll();
        %>
        <h1>Giỏ hàng</h1>
        <a href="AddItems.jsp">Tiếp tục mua hàng</a>
        <table border="1">
            <tr>
                <td>STT</td>
                <td>Mã sách</td>
                <td>Tên sách</td>
                <td>Mã ISBN</td>
                <td>Ngày Xuất Bản</td>
                <td>Số lượng</td>
                <td>Đơn giá</td>
                <td>Thành tiền</td>
                <td>Cập nhật</td>
            </tr>
            <%
                for(int i = 0;i < list.size(); i++){
                Book book = list.get(i);
            %>
            <tr>
                <td><%= (i+1) %></td>
                <td><%= book.BookID %></td>
                <td><%= book.Name %></td><td><%= book.ISBN %></td>
                <td><%= book.PublishedDate %></td>
                <td><%= book.Count %></td>
                <td><%= book.Price %></td>
                <td><%= book.Sum %></td>
                <td><a href="/MVC/Controllers/CRemoveBook?id=<%= book.BookID
                       %>">Xóa</a></td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
