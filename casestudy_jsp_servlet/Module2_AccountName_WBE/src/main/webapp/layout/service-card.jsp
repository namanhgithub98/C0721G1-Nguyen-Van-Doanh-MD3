<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 10/18/2021
  Time: 4:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <div class="row">
    <div class="card col-4" style="width: 18rem;">
    <img src="assert/image/villa.png" class="card-img-top" alt="...">
    <div class="card-body">
    <h5 class="card-title">Villa service</h5>

    <a href="/service?action=createVilla" class="btn btn-primary">Add new Villa</a>
    </div>
    </div>

    <div class="card col-4" style="width: 18rem;">
    <img src="assert/image/house.png" class="card-img-top" alt="...">
    <div class="card-body">
    <h5 class="card-title">House service</h5>

    <a href="/service?action=createHouse" class="btn btn-primary">Add new House</a>
    </div>
    </div>

    <div class="card col-4" style="width: 18rem;">
    <img src="assert/image/room.png" class="card-img-top" alt="...">
    <div class="card-body">
    <h5 class="card-title">Room service</h5>

    <a href="/service?action=createRoom" class="btn btn-primary">Add new Room</a>
    </div>
    </div>
    </div>
</body>
</html>
