<%-- 
    Document   : Expression
    Created on : May 16, 2022, 8:43:13 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title> JSP Expressions </title>
    </head>
    <body bgColor="white">
        <h2>Simple JSP Expression</h2>
        <ul><font color = “#0000FF”>
            <li> <font color = “#0000FF”> Session id:<%= session.getId()%>
            <li> <font color = “#0000FF”> Creation time:<%= new java.util.Date(session.getCreationTime())%>
            <li> <font color = “#0000FF”> Time of last access: " + <%= new java.util.Date(session.getLastAccessedTime())%>
        </ul>
    </body>
</html>
