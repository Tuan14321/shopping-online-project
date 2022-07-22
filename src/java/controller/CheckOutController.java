/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.OrderDAO;
import dao.OrderDetailDAO;
import dao.ProductDAO;
import dao.ShippingDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.LinkedHashMap;
import java.util.Map;
import model.Cart;
import model.Order;
import model.Shipping;

/**
 *
 * @author tuann
 */
public class CheckOutController extends HttpServlet {

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
            out.println("<title>Servlet CheckOutController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CheckOutController at " + request.getContextPath() + "</h1>");
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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        // processRequest(request, response);
        HttpSession ses = request.getSession();
        Map<Integer, Cart> carts = (Map<Integer, Cart>) ses.getAttribute("carts");
        if (carts == null) {
            carts = new LinkedHashMap<>();
        }

        double totalMoney = 0;
        for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
            Object productId = entry.getKey();
            Cart cart = entry.getValue();

            totalMoney += cart.getQuantity() * cart.getProduct().getPrice();

            if (cart.getQuantity() > cart.getProduct().getQuantity()) {
                request.setAttribute("mess", "so luong" + cart.getProduct().getName() + "la" + cart.getProduct().getQuantity());
                request.getRequestDispatcher("cart.jsp").forward(request, response);
            }

        }

        request.setAttribute("totalMoney", totalMoney);
        request.getRequestDispatcher("checkout.jsp").forward(request, response);

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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String note = request.getParameter("note");

        // luu vao database
        // luu vao shipping
        Shipping shipping = Shipping.builder()
                .name(name)
                .phone(phone)
                .address(address)
                .build();

        int shippingId = new ShippingDAO().createReturnId(shipping); // tra ve id tu tang cua ban ghi vua luu vao database

// luu vao order
        HttpSession ses = request.getSession();
        Map<Integer, Cart> carts = (Map<Integer, Cart>) ses.getAttribute("carts");
        if (carts == null) {
            carts = new LinkedHashMap<>();
        }

        double totalPrice = 0;
        for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
            Integer productId = entry.getKey();
            Cart cart = entry.getValue();

            totalPrice += cart.getQuantity() * cart.getProduct().getPrice();

        }

        Order order = Order.builder()
                .accountId(1)
                .totalPrice(totalPrice)
                .note(note)
                .shippingId(shippingId)
                .build();
        int orderId = new OrderDAO().createReturnId(order);

        // luu vao order detail
        new OrderDetailDAO().saveCart(orderId, carts);

        for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
            Object productId = entry.getKey();
            Cart cart = entry.getValue();

            new ProductDAO().UpdateQuantity(cart.getProduct().getId(), cart.getProduct().getQuantity() - cart.getQuantity());

        }

        ses.removeAttribute("carts");
        response.sendRedirect("thanks");
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
