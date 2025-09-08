package com.example.module3project.models;

public class Order {
    private int id;
    private int customerId;
    private int productId;
    private int quantity;

    public Order() {}

    public Order(int customerId, int productId, int quantity) {
        this.customerId = customerId;
        this.productId = productId;
        this.quantity = quantity;
    }

    public Order(int id, int customerId, int productId, int quantity) {
        this.id = id;
        this.customerId = customerId;
        this.productId = productId;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public int getCustomerId() {
        return customerId;
    }
    public void setCustomerId(int customerId) {
        this.customerId = customerId;
    }
    public int getProductId() {
        return productId;
    }
    public void setProductId(int productId) {
        this.productId = productId;
    }
    public int getQuantity() {
        return quantity;
    }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
