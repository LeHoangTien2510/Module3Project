<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/7/2025
  Time: 6:03 PM
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <title>Add Customer</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/add-order.css">
</head>
<body>

<div class="container">
  <div class="card">
    <form action="./AddCustomer" method="post">
      <h1>full_name</h1>
      <div class="field">
        <input type="text" name="name" placeholder="Nhập họ tên">
      </div>

      <h1>email</h1>
      <div class="field">
        <input type="text" name="email" placeholder="Nhập email">
      </div>

      <h1>phone</h1>
      <div class="field">
        <input type="text" name="phone" placeholder="Nhập số điện thoại">
      </div>

      <div class="actions">
        <button type="submit">Thêm</button>
        <a href="customers">Hủy</a>
      </div>
    </form>
  </div>
</div>

</body>
</html>
