<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/7/2025
  Time: 5:39 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Customer</title>
</head>
<body>
<h2>Chỉnh sửa khách hàng</h2>
<form action = "./EditCustomer" method="post">
    <input type="hidden" name="id" value="${customer.id}" />

    <label>Tên khách hàng</label>
    <input name="name" value="${customer.name}"/><br>

    <label>Email</label>
    <input name="email" value="${customer.email}" /><br>

    <label>Số điện thoại</label>
    <input name="phone"  value="${customer.phone}" /><br></br>

    <button type="submit">Lưu thay đổi</button>
    <a href="./customers">Hủy</a>
</form>
</body>
</html>
