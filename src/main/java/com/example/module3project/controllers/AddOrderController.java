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
import java.util.ArrayList;
import java.util.List;

@WebServlet("/AddOrder")
public class AddOrderController extends HttpServlet {
    JdbcOrderDAO jdbcOrderDAO = new JdbcOrderDAO();
    JdbcCustomerDAO jdbcCustomerDAO = new JdbcCustomerDAO();
    JdbcProductDAO jdbcProductDAO = new JdbcProductDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Customer> CustomerList = new ArrayList<>();
        List<Product> ProductList = new ArrayList<>();

        req.setAttribute("CustomerList", CustomerList);
        req.setAttribute("ProductList", ProductList);
        req.getRequestDispatcher("AddOrder.jsp").forward(req, resp);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int customerId = Integer.parseInt(request.getParameter("customer_id"));
        int productId = Integer.parseInt(request.getParameter("product_id"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Order order = new Order(customerId, productId, quantity);
        jdbcOrderDAO.add(order);
        response.sendRedirect("orders");
    }
}
