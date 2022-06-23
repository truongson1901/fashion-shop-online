/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlller.Marketing;

import dal.CategoryDAO;
import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Category;
import model.Product;

/**
 *
 * @author GanKPoet
 */
public class UpdateProductController extends HttpServlet {

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String id = request.getParameter("product_id");
            CategoryDAO c = new CategoryDAO();
            ProductDAO pd = new ProductDAO();
            HttpSession session = request.getSession();
            Product p = pd.getProductById(Integer.parseInt(id));
            List<Category> l = c.getAllCategory();
            session.setAttribute("listCategories", l);
            request.setAttribute("product", p);
           request.getRequestDispatcher("update_product.jsp").forward(request, response);
            
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
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        ProductDAO p = new ProductDAO();
        HttpSession session = request.getSession();

        int id = Integer.parseInt(request.getParameter("id"));
        Product pd = p.getProductById(id);

        String name = request.getParameter("name");
        String desciption = request.getParameter("desciption");
        String brief_infor = request.getParameter("brief_infor");
        boolean status = Boolean.parseBoolean(request.getParameter("status"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int original_price = Integer.parseInt(request.getParameter("original_price"));
        int sale_price = Integer.parseInt(request.getParameter("sale_price"));
        String image_raw = request.getParameter("image");
        String imageUrl;
        if (image_raw != null && !image_raw.equalsIgnoreCase("")) {
            imageUrl = "images/product/" + image_raw;
        } else {
            imageUrl = pd.getImage();
        }

        int categoryId = Integer.parseInt(request.getParameter("categoryId"));

        p.UpdateProduct(id, name, desciption, brief_infor, quantity, status, original_price, sale_price, categoryId);
        p.UpdateImageProduct(id, imageUrl);
        pd = p.getProductById(id);
        request.setAttribute("product", pd);
        request.getRequestDispatcher("update_product.jsp").forward(request, response);
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