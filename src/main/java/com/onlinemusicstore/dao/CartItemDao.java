package com.onlinemusicstore.dao;

import com.onlinemusicstore.model.Cart;
import com.onlinemusicstore.model.CartItem;

/**
 * Created by Sunny Su on 12/10/2016.
 */
public interface CartItemDao {
    void addCartItem(CartItem cartItem);
    void removeCartItem(CartItem cartItem);
    CartItem getCartItemByProductId(int productId);
    void removeAllCartItems(Cart cart);
}
