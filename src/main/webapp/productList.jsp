<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/7/2025
  Time: 5:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>Danh sách sản phẩm</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/product.css">
</head>
<body>
<fmt:setLocale value="vi_VN"/>

<div class="container">
    <header class="header">
        <h1>Danh sách sản phẩm</h1>
        <nav class="actions">
            <a class="btn" href="addProduct.jsp">+ Thêm sản phẩm</a>
            <a class="btn btn-secondary" href="orders">Xem đơn hàng</a>
            <a class="btn btn-secondary" href="customers">Xem khách hàng</a>
        </nav>
    </header>

    <div class="card">
        <div class="table-wrapper">
            <table class="table">
                <thead>
                <tr>
                    <th>Mã SP</th>
                    <th>Tên sản phẩm</th>
                    <th>Giá (VNĐ)</th>
                    <th>Số lượng còn</th>
                    <th>Chỉnh sửa</th>
                    <th>Xóa</th>
                </tr>
                </thead>
                <tbody>
                <c:if test="${empty products}">
                    <tr>
                        <td colspan="6" class="empty">Chưa có sản phẩm nào.</td>
                    </tr>
                </c:if>

                <c:forEach var="pro" items="${products}">
                    <tr>
                        <td><c:out value="${pro.id}" /></td>
                        <td class="name"><c:out value="${pro.name}" /></td>
                        <td class="money">
                            <fmt:formatNumber value="${pro.price}" type="currency" currencySymbol="₫"/>
                        </td>
                        <td class="qty">
                            <fmt:formatNumber value="${pro.quantity}" type="number" groupingUsed="true"/>
                        </td>
                        <td>
                            <a class="link link-edit" href="./EditProduct?id=${pro.id}">Chỉnh sửa</a>
                        </td>
                        <td>
                            <a class="link link-danger"
                               href="DeleteProduct?id=${pro.id}"
                               onclick="return confirm('Bạn có chắc chắn muốn xóa sản phẩm này?');">
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
        <small>© <span id="y"></span> Quản lý sản phẩm</small>
    </footer>
</div>

<script>
    document.getElementById('y').textContent = new Date().getFullYear();
</script>
</body>
</html>
