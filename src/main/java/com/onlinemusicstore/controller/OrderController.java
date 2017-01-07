package com.onlinemusicstore.controller;

import com.onlinemusicstore.model.Cart;
import com.onlinemusicstore.model.Customer;
import com.onlinemusicstore.model.CustomerOrder;
import com.onlinemusicstore.service.CartService;
import com.onlinemusicstore.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Sunny Su on 12/10/2016.
 */
@Controller
public class OrderController {
    @Autowired
    private CartService cartService;

    @Autowired
    private CustomerOrderService customerOrderService;

    @RequestMapping("/order/{cartId}")
    public String createOrder(@PathVariable("cartId") int cartId){
        CustomerOrder customerOrder = new CustomerOrder();
        Cart cart = cartService.getCartById(cartId);
        customerOrder.setCart(cart);

        Customer customer = cart.getCustomer();
        customerOrder.setCustomer(customer);
        customerOrder.setBillingAddress(customer.getBillingAddress());
        customerOrder.setShippingAdress(customer.getShippingAddress());

        customerOrderService.addCustomerOrder(customerOrder);
        return "redirect:/checkout?cartId="+cartId;
    }
}
