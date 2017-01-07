package com.onlinemusicstore.controller;

import com.onlinemusicstore.model.BillingAddress;
import com.onlinemusicstore.model.Customer;
import com.onlinemusicstore.model.ShippingAddress;
import com.onlinemusicstore.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.List;

/**
 * Created by Sunny Su on 12/9/2016.
 */
@Controller
public class RegisterController {
    @Autowired
    private CustomerService customerService;
    @RequestMapping("/register")
    public String register(Model model){
        Customer customer = new Customer();
        BillingAddress buillingAddress = new BillingAddress();
        ShippingAddress shippingAddress = new ShippingAddress();

        customer.setBillingAddress(buillingAddress);
        customer.setShippingAddress(shippingAddress);

        model.addAttribute("customer", customer);

        return "register";
    }

    @RequestMapping(value="/register", method = RequestMethod.POST )
    public String registerPost(@Valid @ModelAttribute("customer") Customer customer, BindingResult result, Model model, HttpServletRequest request){
        if(result.hasErrors()){
            return "register";
        }

        List<Customer> customerList = customerService.getAllCustomer();
        for(int i = 0; i < customerList.size(); i++){
            if(customer.getCustomerEmail().equals(customerList.get(i).getCustomerEmail())){
                model.addAttribute("emailMsg", "Email already exists");
                return "register";
            }

            if(customer.getUsername().equals(customerList.get(i).getUsername())){
                model.addAttribute("usernameMsg", "Username already exists");
                return "register";
            }


        }

        customer.setEnabled(true);
        customerService.addCustomer(customer);


        return "registerSuccess";
    }
}
