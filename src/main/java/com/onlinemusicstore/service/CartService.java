package com.onlinemusicstore.service;

import com.onlinemusicstore.model.Cart;

/**
 * Created by Sunny Su on 12/10/2016.
 */
public interface CartService {
    Cart getCartById(int cartId);
    void updateCart(Cart cart);
}
