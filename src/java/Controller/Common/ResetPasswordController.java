/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Common;

import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.SendMailOK;
import model.User;

/**
 *
 * @author GanKPoet
 */
public class ResetPasswordController extends HttpServlet {

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
            out.println("<title>Servlet ResetPasswordController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ResetPasswordController at " + request.getContextPath() + "</h1>");
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
        String email = request.getParameter("email");

        User user = new UserDAO().getUserByEmail(email);

        if (user == null) {
            request.setAttribute("notification", "Email kh??ng t???n t???i");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        } else {
            try {
                String smtpServer = "smtp.gmail.com";
                String to = user.getEmail();
                String from = "khangdthe151162@fpt.edu.vn";
                String subject = "Re-issue old password\n";
                String body =
                        "<!DOCTYPE html>\n"
                        + "<html lang=\"en\">\n"
                        + "\n"
                        + "<head>\n"
                        + "</head>\n"
                        + "\n"
                        + "<body>\n"
                        + "    <h3 style=\"color: blue;\">Hello " + user.getFull_Name() + "</h3>\n"
                        + "    <div>Ch??ng t??i nh???n ???????c y??u c???u ?????t l???i m???t kh???u c???a b???n t???i http://localhost:8080/fashion-shop-online/home.</div>\n"
                        + "    <h4 style=\"color: green;\">M???t kh???u c?? c???a b???n l?? :" + user.getPassword() + "</h4>\n"
                        + "    <div>N???u b???n kh??ng y??u c???u, b???n c?? th??? b??? qua email n??y. N???u th???c s??? b???n qu??n m???t kh???u, h??y click ngay v??o n??t b??n tr??n , ????ng nh???p l???i v??o KingsMan ????? ?????i m???t kh???u , ch??c b???n c?? m???t bu???i mua s???m tuy???t v???i v???i KingsMan.</div>\n"
                        + "    <div>Hi v???ng b???n s??? kh??ng qu??n m???t kh???u c???a m??nh, nh??ng n???u c?? qu??n th?? ch??ng t??i r???t s???n s??ng h??? tr??? b???n.</div>\n"
                        + "    <h3 style=\"color: blue;\">Tr??n tr???ng c???m ??n qu?? kh??ch !</h3>\n"
                        + "\n"
                        + "</body>\n"
                        + "\n"
                        + "</html>";
                String password = "khang0974421459";
                SendMailOK.send(smtpServer, to, from, password, subject, body);

            } catch (Exception ex) {
                System.out.println("Usage: " + ex.getMessage());
            }
            request.setAttribute("notification", "H??y ki???m tra h??m th?? c???a b???n");
            request.getRequestDispatcher("index.jsp").forward(request, response);
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
