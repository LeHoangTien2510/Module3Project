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
import java.util.List;

@WebServlet("/products")
public class ProductListController extends HttpServlet {
    JdbcOrderDAO jdbcOrderDAO = new JdbcOrderDAO();
    JdbcProductDAO jdbcProductDAO = new JdbcProductDAO();
    JdbcCustomerDAO jdbcCustomerDAO = new JdbcCustomerDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Product> products = jdbcProductDAO.findAll();
        req.setAttribute("products", products);
        req.getRequestDispatcher("productList.jsp").forward(req, resp);
    }
}
