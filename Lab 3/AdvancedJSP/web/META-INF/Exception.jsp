<%-- 
    Document   : Exception
    Created on : May 25, 2022, 4:36:28 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
    <%@ page errorPage="Example.jsp" %>
    Example for Null Pointer exception:
    <%
        String s=null;
        s.length();
    %>
    </body>
</html>
