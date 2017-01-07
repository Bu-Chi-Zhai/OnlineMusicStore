<%--
  Created by IntelliJ IDEA.
  User: Sunny Su
  Date: 12/6/2016
  Time: 10:50 PM
  To change this template use File | Settings | File Templates.
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>

<script>
    $(document).ready(function(){
        var searchCondition = '${searchCondition}';

        $('.table').DataTable({
            "lengthMenu" :[[1, 2, 3, 5, 10, -1], [1, 2, 4, 5, 10, "All"]]
        });
    });
</script>

<div class="container">
    <div class="page-header">
        <h1>Product Inventory Page</h1>
        <p class="lead">This is the product inventory page</p>
    </div>

    <table class="table table-striped">
        <thead>
        <tr class="bg-success">
            <th>Photo Thumb</th>
            <th>Product Name</th>
            <th>Category</th>
            <th>Condition</th>
            <th>Price</th>
            <th>Detail</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${products}" var="product">
            <tr>
                <td>
                    <img src="<c:url value="/resources/images/${product.productId}.png" />" alt="image" style="width: 100%;" />
                </td>
                <td>
                        ${product.productName}
                </td>
                <td>
                        ${product.productCategory}
                </td>
                <td>
                        ${product.productCondition}
                </td>
                <td>
                        ${product.productPrice} USD
                </td>
                <td>
                    <a href="<spring:url value="/product/viewProduct/${product.productId}"/>">
                        <span class="glyphicon glyphicon-info-sign"></span>
                    </a>
                    <a href="<spring:url value="/admin/product/editProduct/${product.productId}"/>">
                        <span class="glyphicon glyphicon-edit"></span>
                    </a>
                    <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}"/>">
                        <span class="glyphicon glyphicon-remove"></span>
                    </a>
                </td>
            </tr>
        </c:forEach>

        </tbody>
    </table>

    <a class="btn btn-primary" href="<spring:url value="/admin/product/addProduct"/>">Add Product</a>
<%@include file="/WEB-INF/view/template/footer.jsp"%>