<%--
  Created by IntelliJ IDEA.
  User: Sunny Su
  Date: 12/10/2016
  Time: 5:55 PM
  To change this template use File | Settings | File Templates.
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>


<div class="container">
    <section>
        <div class="jumbotron">
            <div class="container">
                <h1>Thank you for your business!</h1>
                <p>Your order will be shipped in two business days!</p>
            </div>

        </div>
    </section>
    <section >
        <div>

            <p><a href="<spring:url value="/"/>" class="btn btn-primary">OK</a></p>

        </div>


    </section>

    <%@include file="/WEB-INF/view/template/footer.jsp"%>
