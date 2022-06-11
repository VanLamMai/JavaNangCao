/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MARKO;
import java.io.*;
import java.util.*;
import MARKO.ResumeActionForm;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.ServletException;
import org.apache.struts.action.*;
/**
 *
 * @author LENOVO
 */
public class ResumeAction extends Action{
    public ActionForward execute(ActionMapping mapping,
    ActionForm form, HttpServletRequest request,
    HttpServletResponse response) throws IOException,ServletException{
        ActionErrors actionerrors = new ActionErrors();
        ResumeActionForm dataForm = (ResumeActionForm)form;
        String text = dataForm.getText();
        if(text.trim().equals(""))
        {
        actionerrors.add(ActionErrors.GLOBAL_MESSAGE, new
        ActionMessage("error.notext"));
        }
        if(actionerrors.size() != 0)
        {
        saveErrors(request, actionerrors);
        return new ActionForward(mapping.getInput());
        }
        return mapping.findForward("success");
    }
}
