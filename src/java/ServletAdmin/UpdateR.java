/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServletAdmin;

import dao.DAOA;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MSII
 */
public class UpdateR extends HttpServlet {

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
            out.println("<title>Servlet UpdateR</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateR at " + request.getContextPath() + "</h1>");
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
        String id = request.getParameter("id");
        DAOA dao = new DAOA();
        Model.Room s = dao.getRoom(id);
        List<Model.RoomType> list = dao.getAllRoomtype();
        request.setAttribute("listR", list);
        request.setAttribute("r", s);
        request.getRequestDispatcher("view/admin/UpdateR.jsp").forward(request, response);
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
        String ir = request.getParameter("number");
        int idroom = Integer.parseInt(ir);
        String aimg = request.getParameter("img1");
        String bimg = request.getParameter("img2");
        String cimg = request.getParameter("img3");
        String typeroom = request.getParameter("typeroom");
        String pl = request.getParameter("people");
        int people = Integer.parseInt(pl);
        DAOA dao = new DAOA();
        Model.Room s = dao.getRoom(ir);
        int bednumer = Integer.parseInt(request.getParameter("bed"));
        String rankroom = request.getParameter("rankroom");
        int price = Integer.parseInt(request.getParameter("price"));
        String des = request.getParameter("des");
        String img1 = ((aimg == null) || (aimg.equals(""))) ? s.getAimg() : aimg;
        String img2 = ((bimg == null) || (bimg.equals(""))) ? s.getBimg() : bimg;
        String img3 = ((cimg == null) || (cimg.equals(""))) ? s.getCimg() : cimg;
        dao.UpdateR(idroom, img1, img2, img3, typeroom, people, bednumer, rankroom, price, des);
        response.sendRedirect("RoomType");
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
