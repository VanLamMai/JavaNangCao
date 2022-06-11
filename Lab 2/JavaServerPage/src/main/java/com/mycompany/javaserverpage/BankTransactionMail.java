/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.javaserverpage;

import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;

public class BankTransactionMail implements java.io.Serializable {

    int intAccountNo;
    int intBalance;

    public String getBalance() {
        return String.valueOf(intBalance);
    }

    public void setBalance(String strBal) {
        intBalance = Integer.parseInt(strBal);
    }

    public String getAccountNo() {
        return String.valueOf(intAccountNo);
    }

    public void setAccountNo(String strAccNo) {
        intAccountNo = Integer.parseInt(strAccNo);
    }

    public String withdrawAllowed() {
        if (intAccountNo < 5000) {
            if (intBalance > 10000) {
                return "withdrawal is allowed!!!<br>To withdraw please <a href ='withdraw.jsp?bal= " + String.valueOf(intBalance) + "'>click here.</a>";
//The file withdraw.jsp is created in Example 1 of Do It Yourself

            } else {
                return "withdrawal is not allowed!!!";
            }
        } else {
            return "withdrawal is allowed!!!<br>To withdraw please <a href ='withdraw.jsp?bal=" + String.valueOf(intBalance)
                    + "'>click here.</a>";

        }
    }

    public String sendMail(String strTo, String strMsg) {
        String result = "<BR><BR><BR>";
        String host = "Name_of _Machine_Running_SMTP_Service";
        Properties prop = System.getProperties();
        prop.put("libmail.n-syst.com", host);
        Session session = Session.getDefaultInstance(prop, null);
        session.setDebug(true);
        try {
            MimeMessage msg = new MimeMessage(session);
            msg.setFrom(new InternetAddress("admin@MARKO.com"));
            msg.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse(strTo, false));
            msg.setSubject("Automated Mail from MARKO JSP Page");
            MimeBodyPart mbp = new MimeBodyPart();
            mbp.setText(strMsg);
            Multipart mp = new MimeMultipart();
            mp.addBodyPart(mbp);
            msg.setContent(mp);
            msg.setSentDate(new Date());
            Transport.send(msg);
            result = result + "<H3 align='center'>Mail was successfully sent to</B > < / FONT >: " + strTo + "<BR> ";
            result = result + "</H3>";
        } catch (MessagingException ex) {

            result = result + "<H3 style='color:red' align ='center' >Error:</B > <BR> < HR > " + " < FONT SIZE = 3 COLOR =\"black\">" + ex.toString() + "<BR><HR></h3>";
        } catch (Exception e) {
            result = result + "<H3 style='color:red'align ='center'>Error:</B> <BR> < HR > " + " < FONT SIZE = 3COLOR =\"black\">" + e.toString() + "<BR><HR></h3>";
        } finally {
            return result;
        }
    }
}
