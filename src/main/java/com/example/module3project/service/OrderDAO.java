package com.example.module3project.service;

import com.example.module3project.models.Order;
import com.example.module3project.models.OrderDetail;

import java.util.List;

public interface OrderDAO {
    List<OrderDetail> findAll();
    Order findById(int id);
    void update(Order order);
    void delete(int id);
    void add(Order order);
}
