<%-- 
    Document   : submitcomment
    Created on : Jun 11, 2022, 8:25:46 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
    <header><title>User detail page</title></header>
<body>

<h3>User Details Form</h3>
<ul>
<font color=red>
<html:messages id="message">
<li><bean:write name="message"/></li>
</html:messages>
</font>
</ul>

<p>* Indicates a required field<p>

<table>
<html:form action="/submitcomment">
<tr>
<td>* First name:</td>
<td><html:text property="userID"></html:text></td>
</tr>
<tr>
<tr>
<td>* Last name:</td>
<td><html:text property="last"></html:text></td>
</tr>
<tr>
<tr>
<td>* Country:</td>
<td><html:text property="country"></html:text></td>
</tr>
<tr>
<td>* Email:</td>
<td><html:text property="email"></html:text></td>
</tr>
<tr>
<td>Zip code:</td>
<td><html:text property="zipCode"></html:text></td>
</tr>
<td>Phone Number:</td>
<td><html:text property="phone"></html:text></td>
</tr>
<tr>
<td><html:submit value="Submit"></html:submit></td>
</tr>
</html:form>
</table>
</body>
</html>
