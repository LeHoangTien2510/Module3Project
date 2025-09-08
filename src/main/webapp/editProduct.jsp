<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/7/2025
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<h2>Chỉnh sửa sản phẩm</h2>
<form action = "./EditProduct" method="post">
  <input type="hidden" name="id" value="${product.id}" />

  <label>Tên sản phẩm</label>
  <input name="name" value="${product.name}"/><br>

  <label>Giá sản phẩm</label>
  <input name="price" value="${product.price}" /><br>

  <label>Số lượng còn</label>
  <input name="quantity"  value="${product.quantity}" /><br></br>

  <button type="submit">Lưu thay đổi</button>
  <a href="./products">Hủy</a>
</form>
</body>
</html>
