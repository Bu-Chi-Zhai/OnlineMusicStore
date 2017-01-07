<%--
  Created by IntelliJ IDEA.
  User: Sunny Su
  Date: 12/10/2016
  Time: 5:31 PM
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
                   
                    <h3>Shipping Address</h3>
                    <div class="form-group">
                        <label for="shippingStreet">Street</label>
                        <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="shippingApartment">Apartment Number</label>
                        <form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartment" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="shippingCity">City</label>
                        <form:input path="cart.customer.shippingAddress.city" id="shippingCity" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="shippingState">State</label>
                        <form:input path="cart.customer.shippingAddress.state" id="shippingState" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="shippingCountry">Country</label>
                        <form:input path="cart.customer.shippingAddress.country" id="shippingCountry" type="text" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="shippingZipcode">Zipcode</label>
                        <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZipcode" type="text" class="form-control" />
                    </div>

                    <input type="hidden" name="_flowExecutionKey"/>

                    <br>
                    <br>
                    <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo" >Back</button>
                    <input type="submit" value="Next" class="btn btn-primary" name="_eventId_shippingDetailCollected"/>
                    <button class="btn btn-default" name="_eventId_cancel" >Cancel</button>
                </form:form>
            </div>

        </div>
    </div>


    <script src="<c:url value="/resources/js/controller.js" />"></script>
<%@include file="/WEB-INF/view/template/footer.jsp"%>