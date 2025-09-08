package com.example.module3project.controllers;

import com.example.module3project.service.JdbcProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/DeleteProduct")
public class DeleteProductController extends HttpServlet {
    JdbcProductDAO jdbcProductDAO = new JdbcProductDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        jdbcProductDAO.delete(id);
        resp.sendRedirect("products");
    }
}
