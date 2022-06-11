/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MARKO;
import java.io.*;
/**
 *
 * @author LENOVO
 */
public class TestBean implements Serializable {
    private boolean booleanValue = false;
    private double doubleValue = 45213.451;
    private float floatValue = -123.582F;
    private int intValue = 256;

    private long longValue = 1321546L;
    private short shortValue = 257;
    private String stringValue = "Hello, world!";
    private java.util.Date dateValue = new java.util.Date();

    public TestBean()
    {
        super();
    }
    public boolean isBooleanValue()
    {
        return booleanValue;
    }
    public double getDoubleValue()
    {
        return doubleValue;
    }
    public float getFloatValue()
    {
        return floatValue;
    }
        public int getIntValue()
    {
        return intValue;
    }
    public long getLongValue()
    {
        return longValue;
    }
    public short getShortValue()
    {
        return shortValue;
    }
    public String getStringValue()
    {
        return stringValue;
    }
    public void setBooleanValue(boolean booleanValue)
    {
        this.booleanValue = booleanValue;
    }
    public void setDoubleValue(double doubleValue)
    {
        this.doubleValue = doubleValue;
    }
    public void setFloatValue(float floatValue)
    {
        this.floatValue = floatValue;
    }
    public void setIntValue(int intValue)
    {
        this.intValue = intValue;
    }
    public void setLongValue(long longValue)
    {
        this.longValue = longValue;
    }
    public void setShortValue(short shortValue)
    {
        this.shortValue = shortValue;
    }
    public void setStringValue(String stringValue)
    {
        this.stringValue = stringValue;
    }
    public java.util.Date getDateValue(){
        return dateValue;
    }
    public void setDateValue(java.util.Date date)
    {
        this.dateValue = date;
    }
}
