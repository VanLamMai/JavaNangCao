<%-- 
    Document   : search
    Created on : Jun 11, 2022, 8:20:34 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Account Search</title>
    </head>
    <body>
        <font size="+1">
        Online Banking with Marko
        </font><br>
        <hr width="100%" noshade="true">
        <html:errors/>
        <html:form action="/search.jsp">
        <table>
        <tr>
        <td align="right"><bean:message

        key="label.search.name"/>:</td>

        <td><html:text property="name"/></td>
        </tr>
        <tr>
        <td align="right"><bean:message

        key="label.search.ssNum"/>:</td>

        <td><html:text property="ssNum"/> (xxx-xx-xxxx)</td>
        </tr>
        <tr>
        <td></td>
        <td><html:submit/></td>
        </tr>
        </table>
        </html:form>
        <logic:present name="searchForm" property="results">

        <hr width="100%" size="1" noshade="true">

        <bean:size id="size" name="searchForm" property="results"/>
        <logic:equal name="size" value="0">
        <center><font color="red">
        <b>
        No Account Found....Enter valid name and security
        number
        </b>
        </font>
        </center>
        </logic:equal>
        <logic:greaterThan name="size" value="0">
        <table border="1">
        <tr>
        <th>Name</th>
        <th>Social Security Number</th>
        </tr>
        <logic:iterate id="result" name="searchForm"
        property="results">
        <tr>
        <td><bean:write name="result"
        property="name"/></td>
        <td><bean:write name="result"
        property="ssNum"/></td>
        </tr>
        </logic:iterate>
        </table>
        </logic:greaterThan>

        </logic:present>
    </body>
</html>
