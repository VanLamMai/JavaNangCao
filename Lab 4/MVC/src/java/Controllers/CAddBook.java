/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controllers;

import Models.Book;
import Models.MBook;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
/**
*
* @author Vo
*/
        @WebServlet(urlPatterns = {"/Controllers/CAddBook"})
        public class CAddBook extends HttpServlet {
            protected void processRequest(HttpServletRequest request, HttpServletResponse response)
                    throws ServletException, IOException {
                response.setContentType("text/html;charset=UTF-8");
                String id = request.getParameter("id");
                String name = request.getParameter("name");
                String isbn = request.getParameter("isbn");
                String date = request.getParameter("date");
                String sprice = request.getParameter("price");
                int price = Integer.parseInt(sprice);
                if("".equals(id) || id == null){
                    response.sendRedirect("../Views/addError.jsp");
                    return;
                }
                PrintWriter out = response.getWriter();
                try {
                    MBook books = new MBook();
                    List<Book> list = books.getAll();
                    boolean found = false;
                    for(int i=0; i<list.size();i++){
                        if(list.get(i).BookID.compareTo(id)==0){
                            list.get(i).Count += 1;
                            list.get(i).Sum = list.get(i).Count * list.get(i).Price;
                            found = true;
                            break;
                        }
                    }
                    if(found == false)
                        books.addItem(new Book(id, name, isbn, date, 1, price, price));
                    response.sendRedirect("../Views/showCartBook.jsp");
                } finally {
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
