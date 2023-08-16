/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import dao.DAO;
import entity.Customer;
import entity.QLusers;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author Nathenial
 */
public class myProfile extends HttpServlet {

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
    public boolean uploadFile(InputStream is, String path){
        boolean test = false;
        try {
            byte[] byt = new byte[is.available()];
            is.read();
            FileOutputStream fops = new FileOutputStream(path);
            fops.write(byt);
            fops.flush();
            fops.close();
            
            test = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return test;
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
        String id = request.getParameter("id");
        int cid = Integer.parseInt(request.getParameter("id"));
        DAO dao = new DAO();
        QLusers ql = dao.getAccountByid(id);
        Customer c = dao.getCustomer(cid);
        System.out.println(c);
        request.setAttribute("listC", c);
        request.setAttribute("listAcc", ql);
        request.getRequestDispatcher("view/client/myprofile.jsp").forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        
        try {
        int cid = Integer.parseInt(request.getParameter("cid"));
        String imageC = request.getParameter("imageC");
        String full_name = request.getParameter("full_name");
        String birthofday = request.getParameter("birthofday");
        String cccd = request.getParameter("cccd");
        String phone= request.getParameter("phone");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String country = request.getParameter("country");        
        
        int uid = Integer.parseInt(request.getParameter("id"));
        String username =request.getParameter("username");
        String email =request.getParameter("email");
        String password =request.getParameter("password");
        
        DAO dao = new DAO();
        Customer checkC = dao.checkCustomerExist(cid);
        System.out.println(checkC);
        if (checkC == null) {
            dao.AddCustomer(imageC, full_name, birthofday, cccd, phone, gender, address, country, uid);
            response.sendRedirect("myprofile?id=" + uid);
        }else{
            dao.UpCustomer(cid, imageC, full_name, birthofday, cccd, phone, gender, address, country);
            dao.UpQlUser(username, password, email, uid);
            response.sendRedirect("myprofile?id=" + uid);
        }
        } catch (Exception e) {
            e.printStackTrace();
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
