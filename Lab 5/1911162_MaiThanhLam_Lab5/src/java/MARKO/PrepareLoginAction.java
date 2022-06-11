/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MARKO;
import java.util.*;
import javax.servlet.http.*;
import org.apache.struts.action.*;
/**
 *
 * @author LENOVO
 */
public class PrepareLoginAction extends Action{
    public PrepareLoginAction()
{
super();
}

public ActionForward execute(ActionMapping mapping,
ActionForm form, HttpServletRequest request,
HttpServletResponse response) throws Exception
{
    TestBean bean = new TestBean();
    request.setAttribute("testBean", bean);

    ActionErrors errors = new ActionErrors();
    errors.add(ActionErrors.GLOBAL_MESSAGE, new ActionMessage("errors.detail", "This is a global error#1"));

    errors.add(ActionErrors.GLOBAL_MESSAGE,new ActionMessage("errors.detail", "This is a global error#2"));

    errors.add("test", new ActionMessage("errors.detail", "This is a test error"));

    ActionMessages messages = new ActionMessages();
    messages.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage("message.detail", "This is global message #1"));
    messages.add(ActionMessages.GLOBAL_MESSAGE, new ActionMessage("message.detail", "This is global message #2"));
    messages.add("test", new ActionMessage("message.example.simple"));
    saveMessages(request, messages);
    saveErrors(request, errors);
    return mapping.findForward("success");
    }
}
