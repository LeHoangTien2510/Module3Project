<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/6/2025
  Time: 8:59 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Danh sách khách hàng</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/customer.css">
</head>
<body>
<div class="container">
    <header class="header">
        <h1>Danh sách khách hàng</h1>
        <nav class="actions">
            <a class="btn" href="addCustomer.jsp">+ Thêm khách hàng</a>
            <a class="btn btn-secondary" href="orders">Xem đơn hàng</a>
            <a class="btn btn-secondary" href="products">Xem sản phẩm</a>
        </nav>
    </header>

    <div class="card">
        <div class="table-wrapper">
            <table class="table">
                <thead>
                <tr>
                    <th>Mã KH</th>
                    <th>Tên khách hàng</th>
                    <th>Email</th>
                    <th>Số điện thoại</th>
                    <th>Chỉnh sửa</th>
                    <th>Xóa</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="cus" items="${customerList}">
                    <tr>
                        <td><c:out value="${cus.id}" /></td>
                        <td><c:out value="${cus.name}" /></td>
                        <td><c:out value="${cus.email}" /></td>
                        <td><c:out value="${cus.phone}" /></td>
                        <td>
                            <a class="link link-edit" href="./EditCustomer?id=${cus.id}">Chỉnh sửa</a>
                        </td>
                        <td>
                            <a class="link link-danger"
                               href="DeleteCustomer?id=${cus.id}"
                               onclick="return confirm('Bạn có chắc chắn muốn xóa khách hàng này?');">
                                Xóa
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <footer class="footer">
        <small>© <span id="y"></span> Quản lý khách hàng</small>
    </footer>
</div>

<script>
    // cập nhật năm ở footer
    document.getElementById('y').textContent = new Date().getFullYear();
</script>
</body>
</html>
