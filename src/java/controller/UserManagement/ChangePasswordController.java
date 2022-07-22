/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.UserManagement;

import dao.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Account;

/**
 *
 * @author tuann
 */
public class ChangePasswordController extends HttpServlet {

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
            out.println("<title>Servlet ChangePasswordController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ChangePasswordController at " + request.getContextPath() + "</h1>");
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
        // processRequest(request, response);
        int accountId = Integer.parseInt(request.getParameter("accountId"));
        String opass = request.getParameter("opass");
        String npass = request.getParameter("npass");
        String cfnpass = request.getParameter("cfnpass");
        boolean check = false;
        //String mess = "";

//        if (!npass.equalsIgnoreCase(cfnpass)) {
//            request.setAttribute("mess", "Confirm password must be same new password");
//            response.sendRedirect("view-account");
//            //  request.getRequestDispatcher("user.jsp").forward(request, response);
//        }
        List<Account> listAccount = new AccountDAO().getAllAccount();
        Account account = Account.builder()
                .password(npass)
                .build();
        
        for (Account c : listAccount) {
            if (c.getId() == accountId) {
                if (!npass.equalsIgnoreCase(cfnpass)) {
                    request.setAttribute("mess", "Confirm password must be same new password");
                } else if (!c.getPassword().equalsIgnoreCase(opass)) {
                    request.setAttribute("mess", "Old Password Incorect");
                } else {
                    new AccountDAO().changePassword(accountId, account);
                    check = true;
                    break;
                }
            }
        }
        request.setAttribute("account", account);
        if (check == true) {
            response.sendRedirect("login");
        } else {
            response.sendRedirect("view-account");
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
