<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/7/2025
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
<a href="addProduct.jsp">Thêm sản phẩm </a><br>
<a href ="orders">Xem danh sách đơn hàng</a><br>
<a href = "customers">Xem danh sách khách hàng</a><br>
<table border="1">
    <tr>
        <th>Mã số sản phẩm</th>
        <th>Tên sản phẩm</th>
        <th>Giá tiền mỗi sản phẩm</th>
        <th>Số lượng còn</th>
        <th>Chỉnh sửa </th>
        <th>Xóa</th>
    </tr>

    <c:forEach var="pro" items="${products}">
        <tr>
            <td><c:out value="${pro.id}" /></td>
            <td><c:out value="${pro.name}" /></td>
            <td><c:out value="${pro.price}" /></td>
            <td><c:out value="${pro.quantity}" /></td>
            <td><a href="./EditProduct?id=${pro.id}">Chỉnh sửa</a></td>
            <td>
                <a href="DeleteProduct?id=${pro.id}"
                   onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này?');">
                    Xóa
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
