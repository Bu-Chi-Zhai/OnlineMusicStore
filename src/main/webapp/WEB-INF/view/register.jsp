<%--
  Created by IntelliJ IDEA.
  User: Sunny Su
  Date: 12/6/2016
  Time: 8:05 PM
  To change this template use File | Settings | File Templates.
--%>

<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>



<div class="container">
    <div class="page-header">
        <h1>Register Customer</h1>
        <p class="lead">Please fill in your information below</p>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <form:form action="${pageContext.request.contextPath}/register" method="post" commandName="customer">
                    <h3>Basic Info</h3>
                    <div class="form-group">
                        <label for="name">Name</label><form:errors path="customerName" cssStyle="color:#ff0000;"/>
                        <form:input path="customerName" id="name" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label><span style="color:red">${emailMsg}</span><form:errors path="customerEmail" cssStyle="color:#ff0000;"/>
                        <form:input path="customerEmail" id="email" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone</label>
                        <form:input path="customerPhone" id="phone" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="username">Username</label><span style="color:red">${usernameMsg}</span><form:errors path="username" cssStyle="color:#ff0000;"/>
                        <form:input path="username" id="username" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label><form:errors path="password" cssStyle="color:#ff0000;"/>
                        <form:password path="password" id="password" class="form-control" />
                    </div>

                    <h3>Billing Address</h3>
                    <div class="form-group">
                        <label for="billingStreet">Street</label>
                        <form:input path="billingAddress.streetName" id="billingStreet" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="billingApartment">Apartment Number</label>
                        <form:input path="billingAddress.apartmentNumber" id="billingApartment" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="billingCity">City</label>
                        <form:input path="billingAddress.city" id="billingCity" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="billingState">State</label>
                        <form:input path="billingAddress.state" id="billingState" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="billingCountry">Country</label>
                        <form:input path="billingAddress.country" id="billingCountry" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="billingZipcode">Zipcode</label>
                        <form:input path="billingAddress.zipCode" id="billingZipcode" type="text" class="form-control" />
                    </div>

                    <h3>Shipping Address</h3>
                    <div class="form-group">
                        <label for="shippingStreet">Street</label>
                        <form:input path="shippingAddress.streetName" id="shippingStreet" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="shippingApartment">Apartment Number</label>
                        <form:input path="shippingAddress.apartmentNumber" id="shippingApartment" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="shippingCity">City</label>
                        <form:input path="shippingAddress.city" id="shippingCity" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="shippingState">State</label>
                        <form:input path="shippingAddress.state" id="shippingState" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="shippingCountry">Country</label>
                        <form:input path="shippingAddress.country" id="shippingCountry" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="shippingZipcode">Zipcode</label>
                        <form:input path="shippingAddress.zipCode" id="shippingZipcode" type="text" class="form-control" />
                    </div>
                    <br>
                    <br>
                    <input type="submit" value="submit" class="btn btn-primary"/>
                    <a href="<c:url value="/register"/>" class="btn btn-default">Reset</a>
                    <a href="<c:url value="/"/>" class="btn btn-default">Cancel</a>
                </form:form>
            </div>

        </div>
    </div>


    <script src="<c:url value="/resources/js/controller.js" />"></script>
<%@include file="/WEB-INF/view/template/footer.jsp"%>