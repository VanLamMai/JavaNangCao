<%-- 
    Document   : withdraw1status_1
    Created on : May 16, 2022, 8:55:36 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>MARKO</title>
    </head>
    <body>
        <H1 align="center">MARKO Withdrawal status checking
            Screen</H1>
        <form method ='post'>
            <h3>User Email ID <input type='text' name='email'></h3>
            <h3>Account no <input type='text' name='accNo'></h3>
            <h3>Balance Amount <input type='text' name='Bal'></h3>
            <input type='submit' value="Check Status">
        </form>
        <%
            String strAccount = request.getParameter("accNo");
            String strBal = request.getParameter("Bal");
            String strEmail = request.getParameter("email");
            if (strAccount == null || strBal == null || strEmail
                    == null) {
        %>
        <h3 align="center"> Please enter email address, account No
            and Balance and click the Check Status button to compute
            the withrawal status</h3>
            <%
            } else {
            %>
            <jsp:useBean id="objBT" class="com.mycompany.javaserverpage.BankTransactionMail"
                         scope="session" >
                <jsp:setProperty name="objBT" property="accountNo"
                value="<%=strAccount%>"/>
                <jsp:setProperty name="objBT" property="balance"
                value="<%=strBal%>"/>
            </jsp:useBean>
        <h3>For Account no <jsp:getProperty name="objBT"
                         property="accountNo"/> :
            <%
                String strMessage = objBT.withdrawAllowed();
                out.println(strMessage);
            %>
            <br>
            <br>
            <%=objBT.sendMail(strEmail, strMessage)%>
        </h3>
        <%
            }
        %>
    </body>
</html>
