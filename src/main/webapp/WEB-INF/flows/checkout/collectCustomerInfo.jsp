<%--
  Created by IntelliJ IDEA.
  User: Sunny Su
  Date: 12/10/2016
  Time: 5:26 PM
  To change this template use File | Settings | File Templates.
--%>


<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>



<div class="container">
    <div class="page-header">
        <h1>Customer Details</h1>
        <p class="lead">Please fill in your information below</p>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                <form:form commandName="order" class="form-horizontal">
                    <h3>Basic Info</h3>
                    <div class="form-group">
                        <label for="name">Name</label>
                        <form:input path="cart.customer.customerName" id="name" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <form:input path="cart.customer.customerEmail" id="email" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone</label>
                        <form:input path="cart.customer.customerPhone" id="phone" type="text" class="form-control" />
                    </div>

                    <h3>Billing Address</h3>
                    <div class="form-group">
                        <label for="billingStreet">Street</label>
                        <form:input path="cart.customer.billingAddress.streetName" id="billingStreet" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="billingApartment">Apartment Number</label>
                        <form:input path="cart.customer.billingAddress.apartmentNumber" id="billingApartment" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="billingCity">City</label>
                        <form:input path="cart.customer.billingAddress.city" id="billingCity" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="billingState">State</label>
                        <form:input path="cart.customer.billingAddress.state" id="billingState" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="billingCountry">Country</label>
                        <form:input path="cart.customer.billingAddress.country" id="billingCountry" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="billingZipcode">Zipcode</label>
                        <form:input path="cart.customer.billingAddress.zipCode" id="billingZipcode" type="text" class="form-control" />
                    </div>

                    <input type="hidden" name="_flowExecutionKey"/>

                    <br>
                    <br>
                    <input type="submit" value="Next" class="btn btn-primary" name="_eventId_customerInfoCollected"/>
                    <button class="btn btn-default" name="_eventId_cancel" >Cancel</button>
                </form:form>
            </div>

        </div>
    </div>


    <script src="<c:url value="/resources/js/controller.js" />"></script>
<%@include file="/WEB-INF/view/template/footer.jsp"%>