/**
 * Created by Sunny Su on 12/8/2016.
 */
var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function($scope, $http){

    $scope.refreshCart = function (){
        console.log("refresh");
        console.log($scope.cartId);
        $http.get("/onlineMusic/rest/cart/" + $scope.cartId).success(function(data){
            console.log(data);
            $scope.cart = data;

        });
    };

    $scope.clearCart = function(){
        $http.delete("/onlineMusic/rest/cart/" + $scope.cartId).success($scope.refreshCart());
    };

    $scope.initCartId = function(cartId){
        $scope.cartId = cartId;
        console.log("init");
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function(productId){
        $http.put("/onlineMusic/rest/cart/add/" + productId).success(function(){
            alert("Product successfully added to the cart!");
        });
    };

    $scope.removeFromCart = function(productId){
        $http.put("/onlineMusic/rest/cart/remove/" + productId).success(function(data){
            $scope.refreshCart();
        });
    };

    $scope.calGrandTotal = function(cartItems){
        var grandTotal = 0;
        for(var i = 0; cartItems!= null && i < cartItems.length; i++){
            grandTotal += cartItems[i].totalPrice;

        }

        return grandTotal;
    };
})