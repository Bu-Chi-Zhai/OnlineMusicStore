package com.onlinemusicstore.service.impl;

import com.onlinemusicstore.dao.CustomerOrderDao;
import com.onlinemusicstore.model.Cart;
import com.onlinemusicstore.model.CartItem;
import com.onlinemusicstore.model.CustomerOrder;
import com.onlinemusicstore.service.CartService;
import com.onlinemusicstore.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Sunny Su on 12/10/2016.
 */
@Service
public class CustomerOrderServiceImpl implements CustomerOrderService{
    @Autowired
    private CartService cartService;

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Override
    public void addCustomerOrder(CustomerOrder order) {
        customerOrderDao.addCustomerOrder(order);
    }

    @Override
    public double getCustomerOrderGrandTotal(int cartId) {
        double grandTotal = 0;
        Cart cart = cartService.getCartById(cartId);

        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems){
            grandTotal += item.getTotalPrice();
        }

        return grandTotal;
    }
}
