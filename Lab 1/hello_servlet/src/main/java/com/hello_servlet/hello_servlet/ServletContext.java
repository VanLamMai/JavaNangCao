/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.servlet.ServletConfig;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author nghia
 */
public class ServletContext extends HttpServlet {

    private String dbUser;
    private String dbURL;
    private String dbDriver;
    private String dbPass;
    private Connection connection;
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        ServletContext context = (ServletContext) config.getServletContext();
        dbDriver = context.getInitParameter("DB_Driver");
        dbURL = context.getInitParameter("DB_URL");
        dbUser = context.getInitParameter("DB_User");
        dbPass = context.getInitParameter("DB_Pass");
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {

            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JDBCServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet JDBCServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            try {
               Class.forName(dbDriver);
               connection = DriverManager.getConnection(dbURL, dbUser, dbPass);
                out.println("Connected!");
            } catch (ClassNotFoundException | SQLException ex) {
                out.println(ex.getMessage());
                out.println("Not connected!");
            }
        } finally{
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
