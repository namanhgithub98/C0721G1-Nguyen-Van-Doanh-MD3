<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 10/6/2021
  Time: 3:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Product Discount Calculator</title>
  </head>
  <body>
  <h2>Product Discount Calculator</h2>
  <form action="/display-discount" method="post">
    <label>Product Description:</label><br/>
    <input type="text" name="description" placeholder="Nhập mô tả"/><br/>
    <label>List Price:</label><br/>
    <input type="text" name="price" placeholder="giá niêm yết" /><br/>
    <label>Discount Percent:</label><br/>
    <input type="text" name="percent" placeholder="tỷ lệ chiết khấu" /><br/>
    <input type = "submit" id = "submit" value = "Calculate Discount"/>
  </form>
  </body>
</html>
