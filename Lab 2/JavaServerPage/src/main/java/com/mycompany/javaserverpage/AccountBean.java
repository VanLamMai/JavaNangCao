/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.javaserverpage;

/**
 *
 * @author 
 */
public class AccountBean implements java.io.Serializable {

    private int amount = 0;
    private int balance = 0;

    public String getAmount()// throws Exception
    {
        return String.valueOf(amount);
    }

    public void setAmount(String strAmt)// throws Exception
    {
        this.amount = Integer.parseInt(strAmt);
    }

    public String getBalance() {
        if (balance < amount) {
            return "Balance is not sufficient to withdraw money.";
        } else {
            balance = balance - amount;
        }
        return ("Rs." + String.valueOf(amount) + " withdrawn from your account. The new balance is Rs" + String.valueOf(balance));
    }

    public void setBalance(String strBal) {
        balance = Integer.parseInt(strBal);
    }
}
