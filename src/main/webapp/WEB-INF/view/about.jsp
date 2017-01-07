<%--
  Created by IntelliJ IDEA.
  User: Sunny Su
  Date: 12/10/2016
  Time: 7:45 PM
  To change this template use File | Settings | File Templates.
--%>


<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>


<div class="container">
    <div class="page-header">
        <h1>About us</h1>
        <p>We are a humble team who are passionate about helping our customers to get the best experience on
            music instruments and stuff. We are determined to provide the best products and services.</p>
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <img class="img-responsive" src="<c:url value="/resources/images/background.png" />" alt="showroom">
            </div>
        </div>


    </div>



<%@include file="/WEB-INF/view/template/footer.jsp"%>