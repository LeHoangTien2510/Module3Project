package com.example.module3project.controllers;

import com.example.module3project.models.Customer;
import com.example.module3project.models.Order;
import com.example.module3project.models.Product;
import com.example.module3project.service.JdbcCustomerDAO;
import com.example.module3project.service.JdbcOrderDAO;
import com.example.module3project.service.JdbcProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/EditOrder")
public class EditOrderController extends HttpServlet {
    JdbcOrderDAO jdbcOrderDAO = new JdbcOrderDAO();
    JdbcProductDAO jdbcProductDAO = new JdbcProductDAO();
    JdbcCustomerDAO jdbcCustomerDAO = new JdbcCustomerDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Customer> CustomerList =jdbcCustomerDAO.findAll();
        List<Product> ProductList = jdbcProductDAO.findAll();

        int id = Integer.parseInt(req.getParameter("id"));
        Order order = jdbcOrderDAO.findById(id);
        Customer customer = jdbcCustomerDAO.findById(order.getCustomerId());
        Product product = jdbcProductDAO.findById(order.getProductId());

        req.setAttribute("cus", customer);
        req.setAttribute("pro", product);
        req.setAttribute("order", order);
        req.setAttribute("CustomerList", CustomerList);
        req.setAttribute("ProductList", ProductList);
        req.getRequestDispatcher("editOrder.jsp").forward(req, resp);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        int customerId = Integer.parseInt(request.getParameter("customer_id"));
        int productId = Integer.parseInt(request.getParameter("product_id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Order order = new Order(id, customerId, productId, quantity);
        jdbcOrderDAO.update(order);
        response.sendRedirect("orders");
    }
}
