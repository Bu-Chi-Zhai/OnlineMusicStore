package com.onlinemusicstore.dao;

import com.onlinemusicstore.model.Cart;

import java.io.IOException;

/**
 * Created by Sunny Su on 12/8/2016.
 */
public interface CartDao {
    Cart create(Cart cart);

    Cart read(String cartId);

    void update(String cartId, Cart cart);

    void delete (Cart cart);
    Cart validate(int cartId) throws IOException;
    Cart getCartById(int cartId);
    void updateCart(Cart cart);
}
