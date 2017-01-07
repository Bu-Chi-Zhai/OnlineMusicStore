<%--
  Created by IntelliJ IDEA.
  User: Sunny Su
  Date: 12/6/2016
  Time: 10:45 PM
  To change this template use File | Settings | File Templates.
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>



<div class="container">
    <div class="page-header">
        <h1>Adminstrator page</h1>
        <p class="lead">This is the administrator page</p>
    </div>

    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <h2>Welcome : ${pageContext.request.userPrincipal.name} | <a href="<c:url value="/j_spring_security_logout" />"> Logout</a></h2>
    </c:if>
    <h3>
        <a href="<c:url value="/admin/productInventory"/>">Product Inventory</a>
    </h3>
    <p>Here you can view, check and modify the product inventory!</p>


    <br>
    <br>
    <h3>
        <a href="<c:url value="/admin/customer"/>">Customer Management</a>
    </h3>
    <p>Here you can view the customer information</p>


<%@include file="/WEB-INF/view/template/footer.jsp"%>