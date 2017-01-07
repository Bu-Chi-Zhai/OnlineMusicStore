package com.onlinemusicstore.controller.admin;

import com.onlinemusicstore.model.Customer;
import com.onlinemusicstore.model.Product;
import com.onlinemusicstore.service.CustomerService;
import com.onlinemusicstore.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Sunny Su on 12/9/2016.
 */
@Controller
@RequestMapping("/admin")
public class AdminHome {

    @Autowired
    private ProductService productService;
    @Autowired
    private CustomerService customerService;
    @RequestMapping()
    public String adminPage(){
        return "admin";
    }


    @RequestMapping("/productInventory")
    public String productInventory(Model model){
        List<Product> products = productService.getProductList();
        model.addAttribute("products", products);

        return "productInventory";
    }


    @RequestMapping("/customer")
    public String customerManagement(Model model){
        // to add some customer
        List<Customer> customerList = customerService.getAllCustomer();
        model.addAttribute("customerList", customerList);
        return "customerManagement";
    }


}
