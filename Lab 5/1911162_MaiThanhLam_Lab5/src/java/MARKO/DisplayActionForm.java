/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MARKO;
import org.apache.struts.action.*;
/**
 *
 * @author LENOVO
 */
public class DisplayActionForm extends ActionForm{
    private String accountDetails = "";
    private String accNo = "";
    public void setAccountNo(String acNo)
    {
        accNo = acNo;
    }
    public String getAccountDetails()
    {
        try
        {
            accountDetails = "<table><tr><TH>AccountNumber</TH><TH>Balance Amount</TH></tr>";
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            java.sql.Connection connection =
            java.sql.DriverManager.getConnection("jdbc:odbc:userdb");
            java.sql.Statement statement = connection.createStatement();
            String query_car = "select * from userDB where accountNo = " + accNo;
            java.sql.ResultSet res =
            statement.executeQuery(query_car);
                if (res.next())
                {
                    accountDetails += "<tr><td>" +
                    String.valueOf(res.getInt(1)) + "</td><td>" +
                    String.valueOf(res.getInt(2)) + "</td></tr>";
                    accountDetails += "Account No : " +
                    String.valueOf(res.getInt(1)) + " Balance : " +
                    String.valueOf(res.getInt(2));
                }
            accountDetails += "</table>";
            connection.close();
        }
        catch(Exception e)
        {
            accountDetails = "Error in fetching the records..";
            e.printStackTrace();
        }
        return accountDetails;
    }
}
