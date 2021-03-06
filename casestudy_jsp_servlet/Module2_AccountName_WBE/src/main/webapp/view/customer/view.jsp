<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 10/18/2021
  Time: 4:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
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
            <table class="table table-striped" style="overflow-x:scroll; max-width: 100%; display: inline-block">
                <thead>
                <tr>
                    <th>Customer Id</th>
                    <th>Customer Code</th>
                    <th>Customer Name</th>
                    <th>Customer Birthday</th>
                    <th>Customer Gender</th>
                    <th>Customer Id Card</th>
                    <th>Customer Phone</th>
                    <th>Customer Email</th>
                    <th>Customer Address</th>
                    <th>Customer Type</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <%--                <c:forEach var="customer" items="${customer}">--%>
                <tr>
                    <td><c:out value="${customer.getCustomerId()}"/></td>
                    <td><c:out value="${customer.getCustomerCode()}"/></td>
                    <td><c:out value="${customer.getCustomerName()}"/></td>
                    <td><c:out value="${customer.getCustomerBirthday()}"/></td>
                    <td><c:out value="${customer.getCustomerGender()}"/></td>
                    <td><c:out value="${customer.getCustomerIdCard()}"/></td>
                    <td><c:out value="${customer.getCustomerPhone()}"/></td>
                    <td><c:out value="${customer.getCustomerEmail()}"/></td>
                    <td><c:out value="${customer.getCustomerAddress()}"/></td>
                    <td>
                        <c:choose>
                            <c:when test="${customer.getCustomerTypeId()==1}"><p>Diamond</p></c:when>
                            <c:when test="${customer.getCustomerTypeId()==2}"><p>Platinium</p></c:when>
                            <c:when test="${customer.getCustomerTypeId()==3}"><p>Gold</p></c:when>
                            <c:when test="${customer.getCustomerTypeId()==4}"><p>Silver</p></c:when>
                            <c:when test="${customer.getCustomerTypeId()==5}"><p>Member</p></c:when>
                        </c:choose>
                    </td>
                    <td>
                        <a  class="btn btn-primary" href="/customer?action=edit&id=${customer.getCustomerId()}" role="button">Edit</a>
                        <a onclick="onDelete('${customer.getCustomerId()}','${customer.getCustomerCode()}')" class="btn btn-danger"
                           role="button" data-toggle="modal" data-target="#modelId">Delete</a>
                    </td>
                </tr>
                <%--                </c:forEach>--%>
                </tbody>
            </table>

            <div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Confirm</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="/customer">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" name="id" value="" id="idCustomerDel">
                            <div class="modal-body">
                                <div class="container-fluid">
                                    B???n c?? mu???n x??a <input style="border: none;outline: none;color: blue"
                                                           id="codeCustomerDel">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                <button type="submit" class="btn btn-success">Ok</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<script>
    function onDelete(customerId, customerCode) {
        document.getElementById("idProductDel").value = customerId;
        document.getElementById("nameProductDel").value = customerCode;
    }
</script>
<jsp:include page="/layout/footer.jsp"></jsp:include>
<jsp:include page="/layout/bootstrap-js-footer.jsp"></jsp:include>
</body>
</html>
