<%-- 
    Document   : Expression_Login
    Created on : May 16, 2022, 8:47:31 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body bgcolor="white">
        <%if (request.getParameter("userid") == null
            && request.getParameter("password") == null) { %>
    <center>
        <h2>Online Banking Login</h2>
    </center>
    <form method="GET"
          action="http://localhost:8080/JavaServerPage/LabGuide03/Login/Login.jsp">
        <b>User Id:</b> <input type="text" name="userid" size=15>
        <p>
            <b>Password:<b> <input type="password" name="password" size=8>
                    <p>
                        <input type="submit" value="LOGIN">
                        </form>
                        <% } else { %>
                        <%! String userid, password;%>
                        <%
                            userid = request.getParameter("userid");
                            password = request.getParameter("password");
                        %>
                        <% }%>
    </body>
</html>
