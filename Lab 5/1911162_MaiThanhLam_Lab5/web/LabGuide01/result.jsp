<%-- 
    Document   : result
    Created on : Jun 11, 2022, 8:00:40 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>
<!DOCTYPE html>
<HTML>
    <HEAD>
        <TITLE>Data Confirmation Screen.....</TITLE>
    </HEAD>
    
        <H1>Please confirm the below data</H1>
        <a href="confirm.do">Confirmed</a>
        <a href="error.do">Error in data</a><br>
        <h2>The Name you provided is:</h2>
        <bean:write name="resumeForm" property="text"/>
        <BR>
        <h2>Your Work experience:</h2>
        <bean:write name="resumeForm" property="textarea"/>
        <BR>
        <h2>Would you like to get relocated</h2>
        <bean:write name="resumeForm" property="checkbox"/>
        <BR>
        <h2>Your selected area of specialization:</h2>
        <bean:write name="resumeForm" property="radio"/>
        <BR>
        <h2>Your location preference:</h2>
        <logic:iterate id="select1" name="resumeForm" property="multipleSelect">
        
        <BR>
        </logic:iterate>
        <BR>
        <h2>You have heard about Marko Bank from:</h2>
        <logic:iterate id="multibox1" name="resumeForm" property="multiBox">
        
        <BR>
        </logic:iterate>
        <BR>
        <h2>Your Resume in Word format:</h2>
        <bean:write name="resumeForm" property="fileText"/>
</HTML>
