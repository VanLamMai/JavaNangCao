/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
/**
 *
 * @author LENOVO
 */
public final class SearchAction extends Action
{
    public ActionForward execute(ActionMapping mapping,
    ActionForm form,
    HttpServletRequest request,
    HttpServletResponse response)
    throws Exception{
        EmployeeSearchService service = new EmployeeSearchService();
        ArrayList results;
        SearchForm searchForm = (SearchForm) form;
        // Perform employee search based on what criteria was entered.
        String name = searchForm.getName();
        if (name != null && name.trim().length() > 0)
        {
        results = service.searchByName(name);
        }
        else
        {
        results =
        service.searchBySsNum(searchForm.getSsNum().trim());
        }

        // Place search results in SearchForm for access by JSP.
        searchForm.setResults(results);

        // Forward control to this Action's input page.
        return mapping.getInputForward();
    }
}
