package com.onlinemusicstore.dao;

import com.onlinemusicstore.model.Customer;

import java.util.List;

/**
 * Created by Sunny Su on 12/9/2016.
 */
public interface CustomerDao {
    void addCustomer(Customer customer);

    Customer getCustomerById(int id);
    List<Customer> getAllCustomer();
    Customer getCustomerByUsername(String username);
}
