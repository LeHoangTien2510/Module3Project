<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/7/2025
  Time: 6:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add order</title>
</head>
<body>
<form action = "./AddOrder" method="post">
<h1>Chọn người mua</h1>
<select name="customer_id">
    <option value="">Chưa có người mua</option>
    <c:forEach var="customer" items="${CustomerList}">
        <option value="${customer.id}">${customer.name}</option>
    </c:forEach>
</select>
<h2>Chọn sản phẩm</h2>
<select name="product_id">
    <option value="">Chưa có sản phẩm</option>
    <c:forEach var="product" items="${ProductList}">
        <option value="${product.id}">${product.name} (${product.price})</option>
    </c:forEach>
</select>
<h2>Ghi số lượng</h2>
<input type ="text" name = "quantity"><br>
    <button type = "submit"> Thêm</button>
    <a href="orders">Hủy</a>
</form>
</body>
</html>
