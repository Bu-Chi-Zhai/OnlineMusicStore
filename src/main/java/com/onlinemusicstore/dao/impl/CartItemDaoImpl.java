package com.onlinemusicstore.dao.impl;

import com.onlinemusicstore.dao.CartItemDao;
import com.onlinemusicstore.model.Cart;
import com.onlinemusicstore.model.CartItem;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Sunny Su on 12/10/2016.
 */

@Repository
@Transactional
public class CartItemDaoImpl implements CartItemDao{
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addCartItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cartItem);
        session.flush();
    }

    @Override
    public void removeCartItem(CartItem cartItem) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(cartItem);
        session.flush();

    }

    @Override
    public CartItem getCartItemByProductId(int productId) {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from CartItem where productId = ?");
        query.setInteger(0, productId);
        return (CartItem) query.uniqueResult();
    }

    @Override
    public void removeAllCartItems(Cart cart) {
        Session session = sessionFactory.getCurrentSession();
        List<CartItem> cartItems = cart.getCartItems();

        for(CartItem item : cartItems){
            session.delete(item);
        }
        session.flush();
    }
}
