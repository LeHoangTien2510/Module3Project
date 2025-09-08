package com.example.module3project.controllers;

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

@WebServlet("/AddProduct")
public class AddProductController extends HttpServlet {
    JdbcProductDAO jdbcProductDAO = new JdbcProductDAO();
    JdbcCustomerDAO jdbcCustomerDAO = new JdbcCustomerDAO();
    JdbcOrderDAO jdbcOrderDAO = new JdbcOrderDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String price = req.getParameter("price");
        String quantity = req.getParameter("quantity");

        Product product = new Product(name, Double.parseDouble(price), Integer.parseInt(quantity));
        jdbcProductDAO.add(product);
        resp.sendRedirect("products");
    }
}
