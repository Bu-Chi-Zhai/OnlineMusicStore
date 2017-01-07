<%--
  Created by IntelliJ IDEA.
  User: Sunny Su
  Date: 12/10/2016
  Time: 5:34 PM
  To change this template use File | Settings | File Templates.
--%>




<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/view/template/header.jsp"%>
<jsp:useBean id="now" class="java.util.Date"/>


<div class="container">
    <div class="page-header">
        <h1>Order</h1>
        <p class="lead">Order Confirmation</p>
    </div>

    <div class="container">
        <div class="row">
            <div class="well col-lg-10 col-md-10 col-sm-10 col-xs-10 col-lg-offset-1  col-md-offset-1 col-sm-offset-1 col-xs-offset-1">
                <form:form commandName="order" class="form-horizontal">
                    <div class="text-center">
                        <h1>Receipt</h1>
                    </div>
                    <div class="row">
                        <div class="col-xs6 col-sm-6 col-md-6">
                            <address>
                                <strong>Shipping Address</strong>
                                    ${order.cart.customer.shippingAddress.streetName}
                                <br>
                                    ${order.cart.customer.shippingAddress.apartmentNumber}
                                <br>
                                    ${order.cart.customer.shippingAddress.city},  ${order.cart.customer.shippingAddress.state}
                                <br>
                                    ${order.cart.customer.shippingAddress.country},  ${order.cart.customer.shippingAddress.zipCode}
                            </address>
                        </div>
                        <div class="col-xs6 col-sm-6 col-md-6 text-right">
                           <p>Shipping Date: <fmt:formatDate type="date" value="${now}" /> </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs6 col-sm-6 col-md-6">
                            <address>
                                <strong>Billing Address</strong>
                                    ${order.cart.customer.billingAddress.streetName}
                                <br>
                                    ${order.cart.customer.billingAddress.apartmentNumber}
                                <br>
                                    ${order.cart.customer.billingAddress.city},  ${order.cart.customer.billingAddress.state}
                                <br>
                                    ${order.cart.customer.billingAddress.country},  ${order.cart.customer.billingAddress.zipCode}
                            </address>
                        </div>

                    </div>
                    <div class="row">
                        <table class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th>#</th>
                                    <th class="text-center">Price</th>
                                    <th class="text-center">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}">
                                    <tr>
                                        <td class="col-md-9"><em>${cartItem.product.productName}</em></td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.product.productPrice}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
                                    </tr>
                                </c:forEach>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Grand Total: </strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong>$${order.cart.grandTotal}</strong></h4>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <input type="hidden" name="_flowExecutionKey"/>

                    <br>
                    <br>
                    <button class="btn btn-default" name="_eventId_backToCollectShippingDetail" >Back</button>
                    <input type="submit" value="SubmitOrder" class="btn btn-primary" name="_eventId_orderConfirmed"/>
                    <button class="btn btn-default" name="_eventId_cancel" >Cancel</button>
                </form:form>
            </div>

        </div>
    </div>


    <script src="<c:url value="/resources/js/controller.js" />"></script>
<%@include file="/WEB-INF/view/template/footer.jsp"%>