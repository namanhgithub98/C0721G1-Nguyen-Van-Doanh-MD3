<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 10/18/2021
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
    <li class="nav-item active">
    <a class="nav-link" href="/home.jsp">Home <span class="sr-only">(current)</span></a>
    </li>
    <li class="nav-item">
    <a class="nav-link" href="/employee?action=listEmployee">Employee</a>
    </li>
    </li>
    <li class="nav-item">
    <a class="nav-link" href="/customer?action=listCustomer">Customer</a>
    </li>
    <li class="nav-item">
    <a class="nav-link" href="/service?action=serviceHome">Service</a>
    </li>
    <li class="nav-item">
    <a class="nav-link" href="/contract?action=listContract">Contract</a>
    </li>
    <li class="nav-item">
    <a class="nav-link" href="/contractDetail?action=listContractDetail">Contract Detail</a>
    </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    </div>
    </nav>
</body>
</html>
