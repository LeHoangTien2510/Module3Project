<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/7/2025
  Time: 6:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Product</title>
</head>
<body>
<form action = "./AddProduct" method="post">
  <h1>Tên sản phẩm</h1>
  <input type ="text" name = "name"><br>
  <h1>Giá tiền</h1>
  <input type ="text" name = "price"><br>
  <h1>Số lượng còn</h1>
  <input type ="text" name = "quantity"><br>
  <button type = "submit"> Thêm</button>
  <a href="products">Hủy</a>
</form>
</body>
</html>
