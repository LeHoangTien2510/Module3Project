package com.example.module3project.service;

import com.example.module3project.models.Customer;

import java.util.List;

public interface CustomerDAO {
    List<Customer> findAll();
    Customer findById(int id);
    void update(Customer customer);
    void delete(int id);
    void add(Customer customer);
}
