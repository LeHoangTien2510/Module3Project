<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/7/2025
  Time: 6:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add order</title>
</head>
<body>
<h1>Chọn người mua</h1>
<select name="department_id">
    <option value="">Chưa có phòng ban</option>
    <c:forEach var="department" items="${departments}">
        <option value="${department.id}">${department.name}</option>
    </c:forEach>
</select>
<h2>Chọn sản phẩm</h2>
<select name="department_id">
    <option value="">Chưa có phòng ban</option>
    <c:forEach var="department" items="${departments}">
        <option value="${department.id}">${department.name}</option>
    </c:forEach>
</select>
<h2>Ghi số lượng</h2>
</body>
</html>
