<%-- 
    Document   : withdraw
    Created on : May 16, 2022, 9:26:23 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MARKO</title>
    </head>
    <body>
        <H1 align="center">MARKO Amount Withdrawal Screen</H1>
            <%
                String amt = request.getParameter("amt");
                String balance = request.getParameter("bal");
                if (amt == null) {
            %>
        <form method="post">
            <h3>
                Your balance is <input type='text' readonly name='bal'
                                       value='<%=balance%>'><br>
                Please enter the amount to be withdrawn <input
                    type="text"
                    name="amt">
                <input type="submit" value="Withdraw">
                </form>
                <%
                } else {
                %>
                <jsp:useBean id="objW" class="com.mycompany.javaserverpage.AccountBean"
                             scope="page" />
                <jsp:setProperty name="objW" property="balance"
                value="<%=balance%>"/>

                <jsp:setProperty name="objW" property="amount"
                value="<%=amt%>"/>
                <H3 align="center">Rs. <%=amt%> withdrawn from your
                    account
                    the new balance is <jsp:getProperty name="objW"
                                     property="balance"/>
                </h3>
                <%
                    }
                %>
                </body>
</html>
