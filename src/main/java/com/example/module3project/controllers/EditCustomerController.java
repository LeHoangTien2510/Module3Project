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

@WebServlet("/EditCustomer")
public class EditCustomerController extends HttpServlet {
    JdbcCustomerDAO jdbcCustomerDAO = new JdbcCustomerDAO();
    JdbcProductDAO jdbcProductDAO = new JdbcProductDAO();
    JdbcOrderDAO jdbcOrderDAO = new JdbcOrderDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        Customer customer = jdbcCustomerDAO.findById(id);
        req.setAttribute("customer", customer);
        req.getRequestDispatcher("editCustomer.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        Customer customer = new Customer(id, name, email, phone);
        jdbcCustomerDAO.update(customer);
        resp.sendRedirect("customers");
    }
}
