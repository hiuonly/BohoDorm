/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.BillDAO;
import entity.BookRoom;
import entity.Customer;
import entity.Voucher;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MSII
 */
@WebServlet(name = "BookR", urlPatterns = {"/BookR"})
public class BookR extends HttpServlet {

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
        try {
            response.setContentType("text/html;charset=UTF-8");
            int cid = Integer.parseInt(request.getParameter("cid"));
            int rid = Integer.parseInt(request.getParameter("rid"));
            String checkin = request.getParameter("datecheckin");
            String checkout = request.getParameter("datecheckout");
            int vid = Integer.parseInt(request.getParameter("voucher"));
            BillDAO dao = new BillDAO();
            System.out.println(cid+ " " + rid + " " + checkin+ " " + checkout);
            Customer c = new Customer();
            c.setCid(cid);
            BookRoom bk = new BookRoom();
            Voucher v = new Voucher();
            v.setVid(vid);
            bk.setRid(rid);
            bk.setDatecheckin(checkin);
            bk.setDatecheckout(checkout);
            dao.AddBill(c, bk, v);
            response.sendRedirect("Service");
        } catch (SQLException ex) {
            Logger.getLogger(BookR.class.getName()).log(Level.SEVERE, null, ex);
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
