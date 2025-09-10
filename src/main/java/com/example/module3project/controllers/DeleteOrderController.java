package com.example.module3project.controllers;

import com.example.module3project.service.JdbcOrderDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/DeleteOrder")
public class DeleteOrderController extends HttpServlet {
    JdbcOrderDAO jdbcOrderDAO = new JdbcOrderDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        jdbcOrderDAO.delete(id);
        resp.sendRedirect("./orders");
    }
}
