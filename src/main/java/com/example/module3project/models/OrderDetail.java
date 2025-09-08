package com.example.module3project.models;

public class OrderDetail {
    private int orderId;
    private String customerName;
    private String productName;
    private int quantity;
    private double priceEach;
    private double total;

    public OrderDetail() {}

    public OrderDetail(String customerName, String productName, int quantity, double priceEach, double total) {
        this.customerName = customerName;
        this.productName = productName;
        this.quantity = quantity;
        this.priceEach = priceEach;
        this.total = total;
    }

    public OrderDetail(int orderId, String customerName, String productName,
                       int quantity, double priceEach, double total) {
        this.orderId = orderId;
        this.customerName = customerName;
        this.productName = productName;
        this.quantity = quantity;
        this.priceEach = priceEach;
        this.total = total;
    }

    public int getOrderId() { return orderId; }
    public void setOrderId(int orderId) { this.orderId = orderId; }
    public String getCustomerName() { return customerName; }
    public void setCustomerName(String customerName) { this.customerName = customerName; }
    public String getProductName() { return productName; }
    public void setProductName(String productName) { this.productName = productName; }
    public int getQuantity() { return quantity; }
    public void setQuantity(int quantity) { this.quantity = quantity; }
    public double getPriceEach() { return priceEach; }
    public void setPriceEach(double priceEach) { this.priceEach = priceEach; }
    public double getTotal() { return total; }
    public void setTotal(double total) { this.total = total; }
}
