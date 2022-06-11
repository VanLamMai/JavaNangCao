/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;
import java.util.List;
import org.apache.struts.validator.ValidatorForm;
/**
 *
 * @author LENOVO
 */
public class SearchForm extends ValidatorForm{
    private String name = null;
    private String ssNum = null;
    private List results = null;

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
    public void setResults(List results)
    {
        this.results = results;
    }

    public List getResults()
    {
        return results;
    }
}
