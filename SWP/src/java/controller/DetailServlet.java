/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;
import model.Product;
import model.Size;

/**
 *
 * @author asus
 */
@WebServlet(name = "DetailServlet", urlPatterns = {"/pdetail"})
public class DetailServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet DetailServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DetailServlet at " + request.getContextPath() + "</h1>");
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
        String title = request.getParameter("title");
        String gid_raw = request.getParameter("gid");
        String sid_raw = request.getParameter("sid");

//        String cid_raw = request.getParameter("cid");
//        String thumbnail = request.getParameter("thumbnail");
//        String sizeid_raw = request.getParameter("sid");
//        int sizeid = Integer.parseInt(sizeid_raw);
//        int id = Integer.parseInt(id_raw);
//        int cid = Integer.parseInt(cid_raw);
        int gid = Integer.parseInt(gid_raw);
        int sid= Integer.parseInt(sid_raw);
        ProductDAO pd = new ProductDAO();

        Product p;
//        List<Product> list;
        p = pd.getProductByTitle(title, gid, sid);
        request.setAttribute("prod", p);
//        Product p2;
//        p2 = pd.getProductValue(thumbnail, sizeid);
//        request.setAttribute("pvalue", p2);

        List<Size> ls = pd.getAllSize();
        List<Product> list;

        request.setAttribute("size", ls);
        try {
            p = pd.getProductByTitle(title, gid, sid);
            request.setAttribute("prod", p);
            list = pd.randomRelative(title, gid);
            request.setAttribute("relativeproducts", list);
        } catch (SQLException e) {
        }
//        

//            list = pd.randomRelative(id_raw, cid);
//            request.setAttribute("relativeproducts", list);
        request.getRequestDispatcher("productdetail.jsp").forward(request, response);
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
//        String id_raw = request.getParameter("id");
//        String cid_raw = request.getParameter("cid");
////        String thumbnail = request.getParameter("thumbnail");
////        String sizeid_raw = request.getParameter("sid");
////        int sizeid = Integer.parseInt(sizeid_raw);
//        int id = Integer.parseInt(id_raw);
//        int cid = Integer.parseInt(cid_raw);
//        ProductDAO pd = new ProductDAO();
//        
//        Product p;
////        List<Product> list;
//        p = pd.getProductById(id);
//        request.setAttribute("prod", p);
////        Product p2;
////        p2 = pd.getProductValue(thumbnail, sizeid);
////        request.setAttribute("pvalue", p2);
//        
//        List<Size> ls = pd.getAllSize();
//        List<Product> list;
//        
//        request.setAttribute("size", ls);
//        try {
//            p = pd.getProductById(id);
//            request.setAttribute("prod", p);
//            list = pd.randomRelative(id, cid);
//            request.setAttribute("relativeproducts", list);
//        } catch (SQLException e) {
//        }
//        
//        
////            list = pd.randomRelative(id_raw, cid);
////            request.setAttribute("relativeproducts", list);
//
//        request.getRequestDispatcher("productdetail.jsp").forward(request, response);
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
