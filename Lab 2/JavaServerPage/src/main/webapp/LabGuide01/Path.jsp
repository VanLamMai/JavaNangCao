<%-- 
    Document   : Path
    Created on : May 16, 2022, 7:51:54 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Example</title>
    </head>
    <body>
        <p>
            <LI>The path of this JSP file is:

                <%=request.getRequestURI()%>

            <LI>The Hostname is: <%= request.getRemoteHost()%><br>
        </p>
    </body>
</html>
