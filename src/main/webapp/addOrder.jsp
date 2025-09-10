<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/7/2025
  Time: 6:44 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width,initial-scale=1"/>
    <title>Add order</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/add-order.css">
</head>
<body>

<div class="container">
    <div class="card">
        <c:if test="${not empty errorMessage}">
            <div class="alert alert-error">
                <c:out value="${errorMessage}" />
            </div>
        </c:if>
        <form action="./AddOrder" method="post">
            <h1>Chọn người mua</h1>
            <div class="field">
                <select name="customer_id">
                    <option value="">Chưa có người mua</option>
                    <c:forEach var="customer" items="${CustomerList}">
                        <option value="${customer.id}">${customer.name}</option>
                    </c:forEach>
                </select>
            </div>

            <h2>Chọn sản phẩm</h2>
            <div class="field">
                <select name="product_id">
                    <option value="">Chưa có sản phẩm</option>
                    <c:forEach var="product" items="${ProductList}">
                        <option value="${product.id}">${product.name} (${product.price}, còn: ${product.quantity})</option>
                    </c:forEach>
                </select>
            </div>

            <h2>Ghi số lượng</h2>
            <div class="field">
                <input type="text" name="quantity" placeholder="Nhập số lượng">
            </div>

            <div class="actions">
                <button type="submit">Thêm</button>
                <a href="orders">Hủy</a>
            </div>
        </form>
    </div>
</div>

</body>
</html>
