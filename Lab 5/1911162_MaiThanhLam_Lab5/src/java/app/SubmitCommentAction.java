/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app;
import org.apache.struts.action.*;
import javax.servlet.http.*;
import java.io.*;
/**
 *
 * @author LENOVO
 */
public class SubmitCommentAction extends Action{
    public ActionForward execute(ActionMapping mapping, ActionForm
    form, HttpServletRequest req, HttpServletResponse res)
    throws Exception
    {
        String userID = req.getParameter("userID");
        String shareEmail = req.getParameter("shareEmail");
        System.out.println("userID = " + userID);
        if (null != shareEmail)
        System.out.println("shareEmail = " + shareEmail);

        return mapping.findForward("success");
    }
}
