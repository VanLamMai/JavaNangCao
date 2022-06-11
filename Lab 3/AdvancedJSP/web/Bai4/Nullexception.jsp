<%-- 
    Document   : Nullexception
    Created on : May 29, 2022, 1:59:53 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="ErrorPage.jsp" import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Null Exception Page</title>
    </head>
    <%! Vector<Object> vec = null; %>
    <body>
        Vector has <%= vec.size() %> elements.
    </body>
</html>
