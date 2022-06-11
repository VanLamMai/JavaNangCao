<%-- 
    Document   : ParamId
    Created on : May 16, 2022, 8:06:18 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <jsp:include page="ParamObj.jsp" >
            
       
                
                <jsp:param name="param1" value="val1" />
                
                <jsp:param name="param2" value="val2" />
                
                <jsp:param name="param3" value="val3" />
         </jsp:include>
        <br>
        <b>Calling page:<b>
                <br>
                Name1: <%= request.getParameter("param1")%>
                <br>
                Name2: <%= request.getParameter("param2")%>
                <br>
                Name3: <%= request.getParameter("param3")%>
                <br>
    </body>
</html>
