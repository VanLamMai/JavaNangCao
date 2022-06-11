<%-- 
    Document   : User
    Created on : May 16, 2022, 7:56:36 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Example of Implicit Objects</title>
    </head>
   <body>
       <h1>User submission form</h1>
       <form action="UserDisplay.jsp" method="post">
           Enter User Name:
           <input type="text" name="uname">
           <br>
           <br>
           Enter Password:
           <input type="password" name="pname">
           <br>
           <br>
           <input type="submit" name="submit" value="Submit">
       </form>
   </body>
</html>
