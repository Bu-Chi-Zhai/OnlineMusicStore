package com.onlinemusicstore.dao;

import com.onlinemusicstore.model.Product;

import java.util.List;

/**
 * Created by Sunny Su on 12/6/2016.
 */
public interface ProductDao {
    void addProduct(Product product);
    Product getProductById(int id);
    List<Product> getAllProducts();
    void editProduct(Product product);
    void deleteProduct(Product product);
}
