 <%-- 
    Document   : process2
    Created on : May 29, 2022, 3:20:45 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="idHandler" class="login.login" scope="request">
    <jsp:setProperty name="idHandler" property="*"/>
</jsp:useBean>

<%
    String userName = request.getParameter("account_id");
    String password = request.getParameter("pin_number");

    if (idHandler.authenticate(userName, password)) {
%>
<jsp:forward page="success.jsp"/>
<%
} else {
%>

<jsp:forward page="retry.jsp"/>

<%
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Validation Page</title>
    </head>
    <body>
        You have successfully logged in to our Website
    </body>
</html>
