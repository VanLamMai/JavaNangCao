<%-- 
    Document   : layout
    Created on : Jun 11, 2022, 9:05:25 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head><title><tiles:getAsString name="title"/></title></head>
<body>
<tiles:insert attribute="header"/>
<p>
<table border=2 align="center">
<tr><th><font size="+1">
<tiles:getAsString name="title"/>
</font></th></tr></table>
<p>
<table width=25 align="left" cellspacing="5">
<tr>
<td><tiles:insert attribute="menu"/></td>
</tr>
</table>
<center>
    <table>
<tiles:insert attribute="body"/>
<br clear="all">
</table>
</center><br>
<tiles:insert attribute="footer"/>
</body>
</html>
