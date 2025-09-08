package com.example.module3project.service;

import com.example.module3project.models.Customer;
import com.example.module3project.models.Product;

import java.util.List;

public interface ProductDAO {
    List<Product> findAll();
    Product findById(int id);
    void update(Product product);
    void delete(int id);
    void add(Product product);
}
