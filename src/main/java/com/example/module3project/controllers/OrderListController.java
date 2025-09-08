package com.example.module3project.controllers;

import com.example.module3project.models.Order;
import com.example.module3project.models.OrderDetail;
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

@WebServlet("/orders")
public class OrderListController extends HttpServlet {
    JdbcCustomerDAO jdbcCustomerDAO = new JdbcCustomerDAO();
    JdbcProductDAO jdbcProductDAO = new JdbcProductDAO();
    JdbcOrderDAO jdbcOrderDAO = new JdbcOrderDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<OrderDetail> orderDetails = new ArrayList<>();
        orderDetails = jdbcOrderDAO.findAll();
        req.setAttribute("orderDetails", orderDetails);
        req.getRequestDispatcher("orderList.jsp").forward(req, resp);
    }
}
