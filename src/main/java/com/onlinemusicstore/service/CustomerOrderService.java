package com.onlinemusicstore.service;

import com.onlinemusicstore.model.CustomerOrder;

/**
 * Created by Sunny Su on 12/10/2016.
 */
public interface CustomerOrderService {
    void addCustomerOrder(CustomerOrder order);
    double getCustomerOrderGrandTotal(int cartId);
}
