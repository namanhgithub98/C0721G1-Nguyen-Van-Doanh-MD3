<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 10/18/2021
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <jsp:include page="/layout/employee-left.jsp"></jsp:include>
        </div>
        <div class="col-10">
            <table class="table table-striped" style="overflow-x:scroll; max-width: 100%; display: inline-block">
                <thead>
                <tr>
                    <th>Employee Id</th>
                    <th>Employee Name</th>
                    <th>Employee Birthday</th>
                    <th>Employee Id Card</th>
                    <th>Employee Salary</th>
                    <th>Employee Phone</th>
                    <th>Employee Email</th>
                    <th>Employee Address</th>
                    <th>Position</th>
                    <th>Education Degree</th>
                    <th>Division</th>
                    <th>User Name</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <%--                <c:forEach var="customer" items="${customer}">--%>
                <tr>
                    <td><c:out value="${employee.getEmployeeId()}"/></td>
                    <td><c:out value="${employee.getEmployeeName()}"/></td>
                    <td><c:out value="${employee.getEmployeeBirthday()}"/></td>
                    <td><c:out value="${employee.getEmployeeIdCard()}"/></td>
                    <td><c:out value="${employee.getEmployeeSalary()}"/></td>
                    <td><c:out value="${employee.getEmployeePhone()}"/></td>
                    <td><c:out value="${employee.getEmployeeEmail()}"/></td>
                    <td><c:out value="${employee.getEmployeeAddress()}"/></td>
                    <td>
                        <c:choose>
                            <c:when test="${employee.getPositionId()==1}"><p>L??? t??n</p></c:when>
                            <c:when test="${employee.getPositionId()==2}"><p>Ph???c v???</p></c:when>
                            <c:when test="${employee.getPositionId()==3}"><p>Chuy??n vi??n</p></c:when>
                            <c:when test="${employee.getPositionId()==4}"><p>Gi??m s??t</p></c:when>
                            <c:when test="${employee.getPositionId()==5}"><p>Qu???n l??</p></c:when>
                            <c:when test="${employee.getPositionId()==6}"><p>Gi??m ?????c</p></c:when>
                        </c:choose>
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${employee.getEducationDegreeId()==1}"><p>Trung c???p</p></c:when>
                            <c:when test="${employee.getEducationDegreeId()==2}"><p>Cao ?????ng</p></c:when>
                            <c:when test="${employee.getEducationDegreeId()==3}"><p>?????i h???c</p></c:when>
                            <c:when test="${employee.getEducationDegreeId()==4}"><p>Sau ?????i h???c</p></c:when>
                        </c:choose>
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${employee.getDivisionId()==1}"><p>Sale ??? Marketing</p></c:when>
                            <c:when test="${employee.getDivisionId()==2}"><p>H??nh ch??nh</p></c:when>
                            <c:when test="${employee.getDivisionId()==3}"><p>Ph???c v???</p></c:when>
                            <c:when test="${employee.getDivisionId()==4}"><p>Qu???n l??</p></c:when>
                        </c:choose>
                    </td>
                    <td><c:out value="${employee.getUserName()}"/></td>
                    <td>
                        <a class="btn btn-primary" href="/employee?action=edit&employeeId=${employee.getEmployeeId()}"
                           role="button">Edit</a>
                        <a onclick="onDelete('${employee.getEmployeeId()}','${employee.getEmployeeName()}')"
                           class="btn btn-danger"
                           role="button" data-toggle="modal" data-target="#modelId">Delete</a>
                    </td>
                </tr>
                <%--                </c:forEach>--%>
                </tbody>
            </table>

            <div class="modal fade" id="modelId" tabindex="-1" role="dialog" aria-labelledby="modelTitleId"
                 aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Confirm</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="/employee">
                            <input type="hidden" name="action" value="delete">
                            <input type="hidden" name="customerId" value="" id="idEmployeeDel">
                            <div class="modal-body">
                                <div class="container-fluid">
                                    B???n c?? mu???n x??a <input style="border: none;outline: none;color: blue"
                                                           id="nameEmployeeDel">
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
    function onDelete(employeeId, employeeName) {
        document.getElementById("idEmployeeDel").value = employeeId;
        document.getElementById("nameEmployeeDel").value = employeeName;
    }
</script>
<jsp:include page="/layout/footer.jsp"></jsp:include>
<jsp:include page="/layout/bootstrap-js-footer.jsp"></jsp:include>
</body>
</html>
