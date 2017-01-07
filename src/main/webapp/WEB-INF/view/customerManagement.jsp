<%--
  Created by IntelliJ IDEA.
  User: Sunny Su
  Date: 12/10/2016
  Time: 6:29 PM
  To change this template use File | Settings | File Templates.
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>



<div class="container">
    <div class="page-header">
        <h1>Customer Management Page</h1>
        <p class="lead">This is the customer management page.</p>
    </div>

    <table class="table table-striped">
        <thead>
        <tr class="bg-success">
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Username</th>
            <th>Enabled</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${customerList}" var="customer">
            <tr>

                <td>
                        ${customer.customerName}
                </td>
                <td>
                        ${customer.customerEmail}
                </td>
                <td>
                        ${customer.customerPhone}
                </td>
                <td>
                        ${customer.username}
                </td>
                <td>
                        ${customer.enabled}
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>


    <%@include file="/WEB-INF/view/template/footer.jsp"%>
