<%-- 
    Document   : index
    Created on : Jun 11, 2022, 8:23:31 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<!DOCTYPE html>
<html>
<head>
<title><bean:message key="label.index.title" /></title>
</head>
<body>

<h3><bean:message key="label.index.title" /></h3>
<p><a href="view.submitcomment.do">
<bean:message key="label.index.commentSubmissionForm"/></a>

</body>
</html>
