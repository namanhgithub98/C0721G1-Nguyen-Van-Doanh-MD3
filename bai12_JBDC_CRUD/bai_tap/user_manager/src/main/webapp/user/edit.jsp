<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 10/14/2021
  Time: 11:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
    <link rel="stylesheet" type="text/css" href="bootstrap-4.6.0-dist/css/bootstrap.css">
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a class="btn btn-primary" href="/users?action=users" role="button">List All Users</a>
    </h2>
</center>
<form method="post">
    <fieldset>
        <legend>User Information</legend>
        <table>
            <c:if test="${user != null}">
                <input type="hidden" name="id" id="id" value="${user.getId()}">
            </c:if>
            <tr>
                <th>User Name:</th>
                <td><input type="text" name="name" id="name" value="${user.getName()}"></td>
            </tr>
            <tr>
                <th>User Email:</th>
                <td><input type="text" name="email" id="email" value="${user.getEmail()}"></td>
            </tr>
            <tr>
                <th>Country:</th>
                <td><input type="text" name="country" id="country" value="${user.getCountry()}"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Edit user"></td>
            </tr>
        </table>
    </fieldset>
</form>

<script src="jquery/jquery-3.5.1.min.js"></script>
<script src="jquery/popper.min.js"></script>
<script src="bootstrap4/js/bootstrap.js"></script>
</body>
</html>
