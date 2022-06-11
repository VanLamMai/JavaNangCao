/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MARKO;
import javax.servlet.jsp.tagext.*;
import javax.servlet.jsp.*;
/**
 *
 * @author LENOVO
 */
public class BranchTag extends TagSupport{
    public int doEndTag() throws JspException
    {
        try
        {
            String data = "<table border='2' align='center'><TR><TH>Branch Name</TH><TH>Address</TH><TH>Telephone No</TH></TR>";
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            java.sql.Connection connection =
            java.sql.DriverManager.getConnection("jdbc:odbc:userdb");
            java.sql.Statement statement =
            connection.createStatement();
            String query_car = "select * from BranchDetails";
            java.sql.ResultSet res =
                    statement.executeQuery(query_car);
            while(res.next())
            {
                data += "<tr><TD>" + res.getString(1) + "</td>";
                data += "<TD>" + res.getString(2) + "</td></tr>";
                data += "<TD>" + res.getString(3) + "</td></tr>";
            }
            data += "</table>";
            pageContext.getOut().print(data);
        }
        catch (Exception e)
        {
            throw new JspException(e.toString());
        }
    return EVAL_PAGE;
    }
}
