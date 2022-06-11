/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MARKO;
import org.apache.struts.action.*;
import org.apache.struts.upload.FormFile;
import org.apache.struts.upload.MultipartRequestHandler;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/**
 *
 * @author LENOVO
 */
public class ResumeActionForm extends ActionForm{
    private String text = "";
    private String textarea = "";
    private String[] selectItems = new String[3];
    private String[] multiBox = new String[5];
    private boolean checkbox = false;
    private String radio = "";
    private FormFile file;
    private String fileText;
    public String getText()
    {
        return text;
    }
    public void setText(String text)
    {
        this.text = text;
    }
    public String getTextarea()
    {
        return textarea;
    }
    public void setTextarea(String textarea)
    {
        this.textarea = textarea;
    }
    public boolean getCheckbox()
    {
        return checkbox;
    }
    public void setCheckbox(boolean checkbox)
    {
        this.checkbox = checkbox;
    }
    public String getRadio()
    {
        return radio;
    }
    public void setRadio(String radio)
    {
        this.radio = radio;
    }
    public String[] getSelectItems()
    {
        return selectItems;
    }
    public void setSelectItems(String[] selectItems)
    {
        this.selectItems = selectItems;
    }
        public String[] getMultiBox()
    {
        return multiBox;
    }
    public void setMultiBox(String[] multiBox)
    {
        this.multiBox = multiBox;
    }
    private String[] multipleSelect = {"Multi 3", "Multi 5", "Multi7"};
    public String[] getMultipleSelect()
    {
        return (this.multipleSelect);
    }
    public void setMultipleSelect(String multipleSelect[]){
        this.multipleSelect = multipleSelect;
    }
    public FormFile getFile()
    {
        return file;
    }
    public void setFile(FormFile file)
    {
        this.file = file;
    }
    public String getFileText()
    {
        try
        {
            ByteArrayOutputStream byteStream = new
            ByteArrayOutputStream();
            InputStream input = file.getInputStream();
            byte[] dataBuffer = new byte[4096];
            int numberBytes = 0;
            while ((numberBytes = input.read(dataBuffer, 0, 4096)) !=-1)
            {
                byteStream.write(dataBuffer, 0, numberBytes);
            }
            fileText = new String(byteStream.toByteArray());
            input.close();
        }catch (IOException e){
            return null;
        }
        return fileText;
    }
    public void reset(ActionMapping mapping, HttpServletRequest request)
    {}
}
