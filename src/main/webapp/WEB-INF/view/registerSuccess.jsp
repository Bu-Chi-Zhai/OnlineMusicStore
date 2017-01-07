<%--
  Created by IntelliJ IDEA.
  User: Sunny Su
  Date: 12/9/2016
  Time: 11:11 PM
  To change this template use File | Settings | File Templates.
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>


<div class="container">
    <section>
        <div class="jumbotron">
            <div class="container">
                <h1>Customer registered successfully!</h1>

            </div>

        </div>
    </section>
    <section >
        <div>

            <p><a href="<spring:url value="/product/productList"/>" class="btn btn-primary">Products</a></p>

        </div>


    </section>



    <script src="<c:url value="/resources/js/controller.js" />"></script>
<%@include file="/WEB-INF/view/template/footer.jsp"%>