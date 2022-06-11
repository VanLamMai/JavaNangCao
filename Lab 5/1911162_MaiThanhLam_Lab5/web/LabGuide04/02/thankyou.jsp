<%-- 
    Document   : thankyou
    Created on : Jun 10, 2022, 8:29:22 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
<head><title>Thank you submitting your details</title></head>
<body>
<h3>Details Accepted</h3><p>

<bean:parameter id="userID" name="userID"/>

Thank you for submitting your details, <bean:write
name="userID" />.<p>
<logic:present parameter="shareEmail">
We will display your email address with your comments on the
public forum page.
</logic:present>
</body>
</html>
