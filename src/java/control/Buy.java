/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.BillDAO;
import dao.DAO;
import entity.Bill;
import entity.Cart;
import entity.Customer;
import entity.Item;
import entity.Services;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author MSII
 */
@WebServlet(name = "Buy", urlPatterns = {"/Buy"})
public class Buy extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Buy</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Buy at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        DAO dao = new DAO();
        BillDAO bdao = new BillDAO();
        Customer cs = (Customer) request.getSession().getAttribute("acount");
        Bill bill = bdao.getABill(cs.getCid());
        if (bill == null) {
            response.sendRedirect("room");
        } else if (bill != null) {
            HttpSession session = request.getSession(true);
            Cart cart = null;
            Object o = session.getAttribute("cart");
            if (o != null) {
                cart = (Cart) o;
            } else {
                cart = new Cart();
            }
            int srid = Integer.parseInt(request.getParameter("id"));
            String quan = request.getParameter("quantity");
            if (quan == null) {
                int quantity = 1;
                try {
                    Services s = dao.getServiceById(srid);
                    double price = s.getPrice();
                    Item t = new Item(s, quantity, price);
                    cart.addItem(t);
                } catch (Exception e) {
                    quantity = 1;
                }
            } else if (quan != null) {
                int quantity = Integer.parseInt(quan);
                try {
                    Services s = dao.getServiceById(srid);
                    double price = s.getPrice();
                    Item t = new Item(s, quantity, price);
                    cart.addItem(t);
                } catch (Exception e) {
                    quantity = 1;
                }
            }

            List<Item> list = cart.getItems();
            session.setAttribute("cart", cart);
            session.setAttribute("size", list.size());
            request.getRequestDispatcher("Service").forward(request, response);
        }
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
        HttpSession session = request.getSession(true);
        Cart cart = null;
        Object o = session.getAttribute("cart");
        if (o != null) {
            cart = (Cart) o;
        } else {
            cart = new Cart();
        }
        int srid = Integer.parseInt(request.getParameter("id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        try {
            DAO dao = new DAO();
            Services s = dao.getServiceById(srid);
            double price = s.getPrice();
            Item t = new Item(s, quantity, price);
            cart.addItem(t);
        } catch (Exception e) {
            quantity = 1;
        }
        List<Item> list = cart.getItems();
        session.setAttribute("cart", cart);
        session.setAttribute("size", list.size());
        request.getRequestDispatcher("Service").forward(request, response);
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
