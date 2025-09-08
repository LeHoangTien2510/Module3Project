<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/6/2025
  Time: 8:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title>Order List</title>
  </head>
  <body>
  <a href="./AddOrder">Thêm đơn hàng</a><br>
  <a href ="customers">Xem danh sách khách hàng</a><br>
  <a href = "products">Xem danh sách sản phẩm</a><br>
  <table border="1">
    <tr>
      <th>Mã số đơn hàng</th>
      <th>Tên khách hàng</th>
      <th>Tên sản phẩm</th>
      <th>Số lượng</th>
      <th>Giá tiền mỗi sản phẩm</th>
      <th>Tổng số tiền</th>
      <th>Chỉnh sửa</th>
      <th>Xóa</th>
    </tr>

    <c:forEach var="od" items="${orderDetails}">
      <tr>
        <td><c:out value="${od.orderId}" /></td>
        <td><c:out value="${od.customerName}" /></td>
        <td><c:out value="${od.productName}" /></td>
        <td><c:out value="${od.quantity}" /></td>
        <td><c:out value="${od.priceEach}" /></td>
        <td><c:out value="${od.total}" /></td>
        <td><a href="./EditOrder?id=${od.orderId}">Chỉnh sửa</a></td>
        <td>
          <a href="DeleteOrder?id=${od.orderId}"
             onclick="return confirm('Bạn có chắc chắn muốn xóa đơn hàng này?');">
            Xóa
          </a>
        </td>
      </tr>
    </c:forEach>
  </table>
  </body>
</html>
