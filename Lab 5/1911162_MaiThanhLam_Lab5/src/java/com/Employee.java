/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

/**
 *
 * @author LENOVO
 */
public class Employee {
    private String name;
    private String ssNum;

    public Employee(String name, String ssNum)
    {
        this.name = name;
        this.ssNum = ssNum;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getName()
    {
        return name;
    }

    public void setSsNum(String ssNum)
    {
        this.ssNum = ssNum;
    }
    public String getSsNum()
    {
        return ssNum;
    }
}
