package com.onlinemusicstore.dao.impl;

import com.onlinemusicstore.dao.CartDao;
import com.onlinemusicstore.model.Cart;
import com.onlinemusicstore.service.CustomerOrderService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;

/**
 * Created by Sunny Su on 12/9/2016.
 */
@Repository
@Transactional
public class CartDaoImpl implements CartDao{

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private CustomerOrderService customerOrderService;

    @Override
    public Cart create(Cart cart) {

        return null;
    }

    @Override
    public Cart read(String cartId) {
        return null;
    }

    @Override
    public void update(String cartId, Cart cart) {

    }

    @Override
    public void delete(Cart cart) {

    }

    @Override
    public Cart validate(int cartId) throws IOException {
        Cart cart = getCartById(cartId);
        if(cart==null || cart.getCartItems().size() == 0) throw new IOException(cartId + "");
        updateCart(cart);
        return cart;
    }

    @Override
    public Cart getCartById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Cart cart = (Cart)session.get(Cart.class, id);
        return cart;
    }

    @Override
    public void updateCart(Cart cart) {
        int cartId = cart.getCartId();
        double grandTotal = customerOrderService.getCustomerOrderGrandTotal(cartId);
        cart.setGrandTotal(grandTotal);

        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(cart);
        session.flush();
    }
}
