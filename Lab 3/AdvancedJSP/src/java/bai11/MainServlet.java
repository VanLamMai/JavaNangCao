/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bai11;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author LENOVO
 */
public class MainServlet extends HttpServlet {

    @Override
    public void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException,
            IOException {
        doGet(request, response);
    }

    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try ( PrintWriter out = response.getWriter()) {
            response.setContentType("text/html");
            String action;
            HttpSession ses = request.getSession(true);
            action = request.getParameter("action");
            if (action == null) {
                return;
            } else if (action.equals("home")) {
                RequestDispatcher dis
                        = request.getRequestDispatcher("/home.jsp");
                dis.include(request, response);
            } else if (action.equals("chq")) {
                RequestDispatcher dis
                        = request.getRequestDispatcher("/chq.jsp");
                dis.include(request, response);
            } else if (action.equals("acclosure")) {
                RequestDispatcher dis
                        = request.getRequestDispatcher("/acclosure.jsp");
                dis.include(request, response);
            } else if (action.equals("Withdrawal")) {
                RequestDispatcher dis
                        = request.getRequestDispatcher("/Withdrawal.jsp");
                dis.include(request, response);
            } else if (action.equals("deposit")) {
                RequestDispatcher dis
                        = request.getRequestDispatcher("/deposit.jsp");
                dis.include(request, response);
            } else {
                out.println("Error in Accessing the Site");
            }
        }
    }
}
