package com.onlinemusicstore.service.impl;

import com.onlinemusicstore.dao.CartDao;
import com.onlinemusicstore.model.Cart;
import com.onlinemusicstore.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Sunny Su on 12/10/2016.
 */
@Service
public class CartServiceImpl implements CartService{
    @Autowired
    private CartDao cartDao;

    @Override
    public Cart getCartById(int cartId) {
        Cart cart = cartDao.getCartById(cartId);
        return cart;
    }

    @Override
    public void updateCart(Cart cart) {
        cartDao.updateCart(cart);
    }
}
