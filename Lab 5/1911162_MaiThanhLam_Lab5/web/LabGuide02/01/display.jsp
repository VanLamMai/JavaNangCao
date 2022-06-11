<%-- 
    Document   : display
    Created on : Jun 11, 2022, 8:02:47 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Marko Display Screen</TITLE>
    </head>
    <body>
        <center><h1>Marko Account Display </h1></center>
        <bean:header id="ho" name="user-agent"/>
        <B>You are using : </B>
        <%
        String accNo = "";
        accNo = request.getParameter("accountNo");
        if (accNo!=null)
        {
        %>

        <b><br><br><br><br>
        <center>
        <bean:write name="displayForm"
        property="accountDetails"/>
        </center>
        <br><br><br></b>
        <%
        }
        %>
        <center>
        <FORM method="post">
        Please enter the account number for which u wish to
        see the balance.<br>
        <input type="text" name="accountNo"><br>
        <input type="submit" value="Show Details">
        </FORM>
        </center>
    </body>
</html>
