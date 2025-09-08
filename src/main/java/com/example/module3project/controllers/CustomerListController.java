package com.example.module3project.controllers;

import com.example.module3project.models.Customer;
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

@WebServlet("/customers")
public class CustomerListController extends HttpServlet {
    JdbcOrderDAO jdbcOrderDAO = new JdbcOrderDAO();
    JdbcCustomerDAO jdbcCustomerDAO = new JdbcCustomerDAO();
    JdbcProductDAO jdbcProductDAO = new JdbcProductDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();
        customerList = jdbcCustomerDAO.findAll();
        req.setAttribute("customerList", customerList);
        req.getRequestDispatcher("customerList.jsp").forward(req, resp);
    }
}
