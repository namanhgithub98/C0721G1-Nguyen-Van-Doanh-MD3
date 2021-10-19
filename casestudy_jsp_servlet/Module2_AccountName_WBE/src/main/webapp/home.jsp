<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 10/18/2021
  Time: 1:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Khu Nghỉ Dưỡng Furama</title>
    <jsp:include page="/layout/bootstrap-js-head.jsp"></jsp:include>
</head>
<body>
<jsp:include page="/layout/head.jsp"></jsp:include>
<jsp:include page="/layout/navbar.jsp"></jsp:include>
<div class="container-fluid">
    <div class="row">
        <div class="col-2">
            <jsp:include page="/layout/left.jsp"></jsp:include>
        </div>
        <div class="col-10">
            <div class="row">
                <div class="card col-6" style="width: 18rem;">
                    <img src="assert/image/hoBoi.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Hồ bơi/Fitness</h5>
                    </div>
                </div>

                <div class="card col-6" style="width: 18rem;">
                    <img src="assert/image/spa.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Spa</h5>
                    </div>
                </div>

                <div class="card col-6" style="width: 18rem;">
                    <img src="assert/image/quayBar.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Quầy bar/Lounge</h5>
                    </div>
                </div>

                <div class="card col-6" style="width: 18rem;">
                    <img src="assert/image/casino.png" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Casino/Sòng bạc</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="/layout/footer.jsp"></jsp:include>
<jsp:include page="/layout/bootstrap-js-footer.jsp"></jsp:include>
</body>
</html>
