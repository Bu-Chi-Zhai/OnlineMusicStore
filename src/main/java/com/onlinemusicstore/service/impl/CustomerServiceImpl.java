package com.onlinemusicstore.service.impl;

import com.onlinemusicstore.dao.CustomerDao;
import com.onlinemusicstore.model.Customer;
import com.onlinemusicstore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Sunny Su on 12/9/2016.
 */
@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerDao customerDao;

    @Override
    public void addCustomer(Customer customer) {
        customerDao.addCustomer(customer);
    }

    @Override
    public Customer getCustomerById(int id) {
        return customerDao.getCustomerById(id);
    }

    @Override
    public List<Customer> getAllCustomer() {
        return customerDao.getAllCustomer();
    }

    @Override
    public Customer getCustomerByUsername(String name) {
        return customerDao.getCustomerByUsername(name);
    }


}
