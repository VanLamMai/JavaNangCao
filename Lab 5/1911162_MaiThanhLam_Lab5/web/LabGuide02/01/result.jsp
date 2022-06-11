<%-- 
    Document   : result
    Created on : Jun 11, 2022, 8:05:53 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
<head>
<title>MARKO Account No validator</title>
</head>

<body>

<h1>Marko Account Validator</h1>
<hr noshade>
<h2>Using &lt;logic:empty name="LogicActionForm"
property="userName"&gt;</h2>

<logic:empty name="LogicActionForm" property="userName">
User Name cannot be empty...
</logic:empty>

<br>
<hr noshade>
<h2>Using &lt;logic:notEmpty name="LogicActionForm"
property="userName"&gt;</h2>

<logic:notEmpty name="LogicActionForm" property="userName">
<h2>Welcome :<bean:write name="LogicActionForm"
property="userName"/></h2>
<br>
</logic:notEmpty>

<br>
<hr noshade>
<h2>Using &lt;logic:equal name="LogicActionForm"
property="accountNo" value="6"&gt;</h2>

<logic:equal name="LogicActionForm" property="accountNo"
value="5000">
<h4>Your account No is 5000</h4>
</logic:equal>
<br>
<hr noshade>
<h2>Using &lt;logic:notEqual&gt; name="LogicActionForm"
property="accountNo" value="7"</h2>

<logic:notEqual name="LogicActionForm" property="accountNo"
value="5000">
<h4>Your account No is not equal to 5000</h4>
</logic:notEqual>

<br>
<hr noshade>
<h2>Using &lt;logic:greaterEqual name="LogicActionForm"
property="accountNo" value="3"&gt;</h2>

<logic:greaterEqual name="LogicActionForm"
property="accountNo" value="5000">
    <h4>Your account No is Valid</h4>
</logic:greaterEqual>

<br>
<hr noshade>
<h2>Using &lt;logic:greaterThan name="LogicActionForm"
property="accountNo" value="4"&gt;</h2>

<logic:greaterThan name="LogicActionForm"
property="accountNo" value="5000">
<h4>Your account No is Not Valid</h4>
</logic:greaterThan>

<br>
<hr noshade>
<h2>Using &lt;logic:present name="LogicActionForm"
property="accountNo"&gt;</h2>

<logic:present name="LogicActionForm" property="accountNo">
<h4>The Bean has Property account No</h4>
</logic:present>

<br>
<hr noshade>
<h2>Using &lt;logic:notPresent name="LogicActionForm"
property="elephant"&gt;</h2>

<logic:notPresent name="LogicActionForm"
property="elephant">
    <h4>The Bean doesnt have Property elephant</h4>
</logic:notPresent>

<br>
</body>
</html>
