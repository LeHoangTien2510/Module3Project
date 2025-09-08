<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/8/2025
  Time: 7:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Order</title>
</head>
<body>
<form action = "./EditOrder" method="post">
  <input type="hidden" name="id" value="${order.id}"/>
  <h1>Sửa người mua</h1>
  <select name="customer_id" value = ${cus.name}>
    <c:forEach var="customer" items="${CustomerList}">
      <option value="${customer.id}">${customer.name}</option>
    </c:forEach>
  </select>
  <h2>Sửa sản phẩm</h2>
  <select name="product_id" value = "${pro.name}">
    <c:forEach var="product" items="${ProductList}">
      <option value="${product.id}">${product.name} (${product.price})</option>
    </c:forEach>
  </select>
  <h2>Sửa số lượng</h2>
  <input type ="text" name = "quantity" value="${order.quantity}"><br>
  <button type = "submit"> Cập nhật</button>
  <a href="orders">Hủy</a>
</form>
</body>
</html>
