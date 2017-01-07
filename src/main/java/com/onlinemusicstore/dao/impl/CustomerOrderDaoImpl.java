package com.onlinemusicstore.dao.impl;

import com.onlinemusicstore.dao.CustomerOrderDao;
import com.onlinemusicstore.model.CustomerOrder;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.jws.Oneway;

/**
 * Created by Sunny Su on 12/10/2016.
 */
@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao{
    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public void addCustomerOrder(CustomerOrder order) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(order);
        session.flush();
    }


}
