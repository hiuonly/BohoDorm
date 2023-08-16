/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import entity.Customer;
import entity.QLusers;
import entity.Room;
import entity.ServiceType;
import entity.Services;
import entity.Voucher;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Nathenial
 */
public class payControl extends HttpServlet {

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
        
        String roomid = request.getParameter("rid");
        
        HttpSession session = request.getSession();
        QLusers ql = (QLusers)session.getAttribute("acc");

        DAO dao = new DAO();
        Room listrPay = dao.getRoomIForPayByID(roomid);
        List<ServiceType> listST = dao.getAllTypeService();
        List<Services> listS1 = dao.getAllServicesByid1();
        List<Services> listS2 = dao.getAllServicesByid2();
        List<Services> listS3 = dao.getAllServicesByid3();
        Customer c = dao.getCustomer(ql.getUsid());
        List<Voucher> v = dao.getAllVoucher();
        request.setAttribute("listV", v);
        request.setAttribute("listC", c);
        request.setAttribute("listS3", listS3);
        request.setAttribute("listS2", listS2);
        request.setAttribute("listS1", listS1);
        request.setAttribute("listST", listST);      
        request.setAttribute("listrPay", listrPay);
        request.getRequestDispatcher("view/client/pay.jsp").forward(request, response);
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
