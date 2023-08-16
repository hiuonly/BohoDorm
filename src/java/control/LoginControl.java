/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import entity.Employees;
import dao.DAO;
import dao.DAOA;
import entity.Customer;
import entity.QLusers;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nathenial
 */
public class LoginControl extends HttpServlet {

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
        request.getRequestDispatcher("view/client/loginPage.jsp").forward(request, response);
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

        String username = request.getParameter("user");
        String password = request.getParameter("pass");

        DAO dao = new DAO();
        QLusers a = dao.Login(username, password);
        Customer c = dao.getCustomerbyUse(username);
        DAOA daoa = new DAOA();
        Employees e = daoa.checkEmployees(username);
        HttpSession session = request.getSession();
        if (a == null) {
            request.setAttribute("messError", "Username or Passwords invalid");
            request.getRequestDispatcher("view/client/loginPage.jsp").forward(request, response);
        } 
        else if (a.getUrole() == 1 || a.getUrole() == 2) {
            if(e == null) {
            session.setAttribute("acc", a);
            request.getRequestDispatcher("view/admin/Employees.jsp").forward(request, response);
            }else {
                session.setAttribute("acc", e);
                response.sendRedirect("dashboardControl");
            }
            
        }
        else if (c == null) {
            session.setAttribute("acc", a);
            request.getRequestDispatcher("view/client/Customer.jsp").forward(request, response);
        }  else {
            session.setAttribute("acc", a);
            session.setAttribute("acount", c);
            response.sendRedirect("homeP");
        }
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
