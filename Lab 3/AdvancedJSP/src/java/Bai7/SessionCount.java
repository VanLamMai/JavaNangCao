/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Bai7;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 *
 * @author LENOVO
 */
public class SessionCount implements HttpSessionListener{
    public static int numberOfSession = 0;
    @Override
    public void sessionCreated(HttpSessionEvent evt){
        numberOfSession ++;
    }
    
    @Override
    public void sessionDestroyed(HttpSessionEvent evt){
        numberOfSession--;
    }
    
    public static int getNumberOfSessions(){
        return numberOfSession;
    }
}
