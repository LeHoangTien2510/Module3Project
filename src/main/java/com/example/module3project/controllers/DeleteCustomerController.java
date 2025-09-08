package com.example.module3project.controllers;

import com.example.module3project.service.JdbcCustomerDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/DeleteCustomer")
public class DeleteCustomerController extends HttpServlet {
    JdbcCustomerDAO jdbcCustomerDAO = new JdbcCustomerDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        jdbcCustomerDAO.delete(id);
        resp.sendRedirect("customers");
    }
}
