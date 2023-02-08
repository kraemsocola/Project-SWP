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

/**
 *
 * @author asus
 */
@WebServlet(name = "ListProduct", urlPatterns = {"/listproduct"})
public class ListProduct extends HttpServlet {

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
            out.println("<title>Servlet ListProduct</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListProduct at " + request.getContextPath() + "</h1>");
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
//        String title = request.getParameter("title");
//        String gid_raw = request.getParameter("gid");
//        String sid_raw = request.getParameter("sid");
        String cid_raw = request.getParameter("cid");

//        String cid_raw = request.getParameter("cid");
//        String thumbnail = request.getParameter("thumbnail");
//        String sizeid_raw = request.getParameter("sid");
//        int sizeid = Integer.parseInt(sizeid_raw);
//        int id = Integer.parseInt(id_raw);
//        int cid = Integer.parseInt(cid_raw);
//        int gid = Integer.parseInt(gid_raw);
//        int sid= Integer.parseInt(sid_raw);
        int cid= Integer.parseInt(cid_raw);
        ProductDAO pd = new ProductDAO();

        Product p;
//        List<Product> list;
//        p = pd.getProductByTitle(title, gid, sid);
//        request.setAttribute("prod", p);
//        Product p2;
//        p2 = pd.getProductValue(thumbnail, sizeid);
//        request.setAttribute("pvalue", p2);

//        List<Product> ls = pd.getProductSize(title);
        List<Product> list, listc, listgender;

        //            p = pd.getProductByTitle(title, gid, sid);
//            request.setAttribute("prod", p);
//            list = pd.randomRelative(title, gid);
            listc = pd.getProductByCategory(cid);
//            request.setAttribute("relativeproducts", list);
        request.setAttribute("listbycate", listc);

//            list = pd.randomRelative(id_raw, cid);
//            request.setAttribute("relativeproducts", list);
        request.getRequestDispatcher("listproduct.jsp").forward(request, response);
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
