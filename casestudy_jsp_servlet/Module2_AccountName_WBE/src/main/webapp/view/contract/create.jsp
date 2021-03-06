<%--
  Created by IntelliJ IDEA.
  User: OS
  Date: 10/18/2021
  Time: 4:32 PM
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
            <jsp:include page="/layout/contract-left.jsp"></jsp:include>
        </div>
        <div class="col-10">
            <form action="/contract" method="post">
                <input type="hidden" name="action" value="create">
                <fieldset>
                    <table >
                        <legend>Contract information</legend>
                        <tr>
                            <th>Contract Start Date:</th>
                            <td>
                                <input type="date" name="contractStartDate" id="contractStartDate" size="45"
                                       value="${contract.getContractStartDate()}"/>
                            </td>
                        </tr>
                        <tr>
                            <th>Contract End Date:</th>
                            <td>
                                <input type="date" name="contractEndDate" id="contractEndDate" size="45"
                                       value="${contract.getContractEndDate()}"/>
                            </td>
                        </tr>
                        <tr>
                            <th>Contract Deposit:</th>
                            <td>
                                <input type="number" name="contractDeposit" id="contractDeposit" size="45"
                                       aria-describedby="contract_deposit" value="${contract.getContractDeposit()}"/>
                                <c:if test="${messContractDeposit != null}">
                                    <small id="contract_deposit" class="form-text text-danger">${messContractDeposit}</small>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>Contract Total Money:</th>
                            <td>
                                <input type="number" name="contractTotalMoney" id="contractTotalMoney" size="45"
                                       aria-describedby="contract_totalMoney" value="${contract.getContractTotalMoney()}"/>
                                <c:if test="${messContractTotalMoney != null}">
                                    <small id="contract_totalMoney" class="form-text text-danger">${messContractTotalMoney}</small>
                                </c:if>
                            </td>
                        </tr>
                        <tr>
                            <th>Employee Id:</th>
                            <td>
                                <input type="number" name="employeeId" id="employeeId" size="45"/>
                            </td>
                        </tr>
                        <tr>
                            <th>Customer Id:</th>
                            <td>
                                <input type="number" name="customerId" id="customerId" size="45"/>
                            </td>
                        </tr>
                        <tr>
                            <th>Service Id:</th>
                            <td>
                                <input type="number" name="serviceId" id="serviceId" size="45"/>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Create Contract"></td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </div>
</div>
<jsp:include page="/layout/footer.jsp"></jsp:include>
<jsp:include page="/layout/bootstrap-js-footer.jsp"></jsp:include>
</body>
</html>
