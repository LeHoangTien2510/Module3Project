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

@WebServlet("/EditProduct")
public class EditProductController extends HttpServlet {
    JdbcCustomerDAO jdbcCustomerDAO = new JdbcCustomerDAO();
    JdbcProductDAO jdbcProductDAO = new JdbcProductDAO();
    JdbcOrderDAO jdbcOrderDAO = new JdbcOrderDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        double price = Double.parseDouble(req.getParameter("price"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));

        Product product = new Product(id,name,price,quantity);
        jdbcProductDAO.update(product);
        resp.sendRedirect("products");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Product product = jdbcProductDAO.findById(id);
        req.setAttribute("product", product);
        req.getRequestDispatcher("editProduct.jsp").forward(req, resp);
    }
}
