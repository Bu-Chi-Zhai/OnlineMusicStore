package com.onlinemusicstore.service;

import com.onlinemusicstore.model.Product;

import java.util.List;

/**
 * Created by Sunny Su on 12/9/2016.
 */
public interface ProductService {

    List<Product> getProductList();

    Product getProductById(int id);

    void addProduct(Product product);

    void editProduct(Product product);

    void deleteProduct(Product product);
}
