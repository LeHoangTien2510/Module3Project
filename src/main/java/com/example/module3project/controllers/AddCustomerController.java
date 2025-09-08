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

@WebServlet("/AddCustomer")
public class AddCustomerController extends HttpServlet {
    JdbcCustomerDAO jdbcCustomerDAO = new JdbcCustomerDAO();
    JdbcOrderDAO jdbcOrderDAO = new JdbcOrderDAO();
    JdbcProductDAO jdbcProductDAO = new JdbcProductDAO();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");

        Customer customer = new Customer(name, email, phone);
        jdbcCustomerDAO.add(customer);
        resp.sendRedirect("customers");
    }
}
