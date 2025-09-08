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
    <title>customer List</title>
</head>
<body>
<a href="addCustomer.jsp">Thêm khách hàng</a>
<table border="1">
    <tr>
        <th>Mã số khách hàng</th>
        <th>Tên khách hàng</th>
        <th>Email khách hàng</th>
        <th>Số điện thoại khách hàng</th>
        <th>Chỉnh sửa </th>
        <th>Xóa</th>
    </tr>

    <c:forEach var="cus" items="${customerList}">
        <tr>
            <td><c:out value="${cus.id}" /></td>
            <td><c:out value="${cus.name}" /></td>
            <td><c:out value="${cus.email}" /></td>
            <td><c:out value="${cus.phone}" /></td>
            <td><a href="./EditCustomer?id=${cus.id}">Chỉnh sửa</a></td>
            <td>
                <a href="DeleteCustomer?id=${cus.id}"
                   onclick="return confirm('Bạn có chắc chắn muốn xóa khách hàng này?');">
                    Xóa
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
