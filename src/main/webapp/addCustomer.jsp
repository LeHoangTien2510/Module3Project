<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 9/7/2025
  Time: 6:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add Customer</title>
</head>
<body>
<form action = "./AddCustomer" method="post">
  <h1>full_name</h1>
  <input type ="text" name = "name"><br>
  <h1>email</h1>
  <input type ="text" name = "email"><br>
  <h1>phone</h1>
  <input type ="text" name = "phone"><br>
  <button type = "submit"> Thêm</button>
</form>
</body>
</html>
