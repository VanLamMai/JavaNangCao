/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;
import java.util.ArrayList;
/**
 *
 * @author LENOVO
 */
public class EmployeeSearchService {
    /* Hard-coded sample data. Normally this would come from a real
    data
    source such as a database. */
    private static Employee[] employees =
    {
        new Employee("George Smith", "123-45-6789"),
        new Employee("Eldson Stewart", "987-65-4321"),
        new Employee("Roberts Shankle", "111-11-1111"),
        new Employee("Patrick Wilson", "222-22-2222"),
        new Employee("Jim Frank", "333-33-3333"),
    };
    // Search for employees by name.
    public ArrayList searchByName(String name)
    {
        ArrayList resultList = new ArrayList();

        for (int i = 0; i < employees.length; i++)
        {
        if

        (employees[i].getName().toUpperCase().indexOf(name.toUpperCase()) !=
        -1)
        {
        resultList.add(employees[i]);
        }
        }
        return resultList;
        }

        // Search for employee by social security number.
        public ArrayList searchBySsNum(String ssNum)
        {
        ArrayList resultList = new ArrayList();

        for (int i = 0; i < employees.length; i++)
        {
        if (employees[i].getSsNum().equals(ssNum))
        {
        resultList.add(employees[i]);
        }
        }
        return resultList;
    }
}
