package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author LENOVO
 */
public class login {

    private String account_id = "";
    private String pin_number = "";

    public login() {

    }

    public void setAccount_ID(String acc_id) {
        this.account_id = acc_id;
    }

    public void setPin_num(String pin_number) {
        this.pin_number = pin_number;
    }

    public boolean authenticate(String acc_id2, String pin_num2) {  
        String query = "select * from Registration";
        String Dbacc_id = "";
        String DbPin_num = "";

        // Connect database
        String url = "jdbc:mysql://localhost:3306/";
        String driver = "com.mysql.cj.jdbc.Driver";
        String dbName = "bai8";
        String userName = "root";
        String password = "";
        Statement statement;
        try {
            Class.forName(driver);
            Connection connection = DriverManager.getConnection(url + dbName, userName, password);
            statement = connection.createStatement();
            ResultSet rst = statement.executeQuery(query);
            while (rst.next()) {
                Dbacc_id = rst.getString("account_id");
                DbPin_num = rst.getString("pin_number");

                if (acc_id2.equals(Dbacc_id) && pin_num2.equals(DbPin_num)) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

}
