<%-- 
    Document   : form
    Created on : May 29, 2022, 9:35:16 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Page</title>
        <style>
            body, input {
                font-family:Tahoma;
                font-size:10pt;
            }
        </style>
    </head>
    <body>
        <form action="welcome.jsp" method="post">
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Enter your Account Id:
            <input type="text" name="Acc_Id" /> &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            Enter your Pin number:
            <input type="text" name="Pin_num"/> <br><br><br><br>
            <Center><input type="submit" value="Submit"/></Center>
        </form>
    </body>
</html>
