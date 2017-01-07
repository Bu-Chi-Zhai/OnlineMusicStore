package com.onlinemusicstore.service;

import com.onlinemusicstore.model.Customer;

import java.util.List;

/**
 * Created by Sunny Su on 12/9/2016.
 */
public interface CustomerService {
    void addCustomer(Customer customer);

    Customer getCustomerById(int id);
    List<Customer> getAllCustomer();
    Customer getCustomerByUsername(String name);


}
