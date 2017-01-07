package com.onlinemusicstore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Sunny Su on 12/9/2016.
 */
@Controller
public class HomeController {

    @RequestMapping("/")
    public String home(){
        return "home";
    }

    @RequestMapping("/login")
    public String login(@RequestParam(value="error", required = false) String error, @RequestParam(value="logou", required = false) String logout, Model model){
        if(error != null) {
            model.addAttribute("error", "Invalid username and password!");
        }
        if(logout != null){
            model.addAttribute("msg", "You have been logout successfully!");
        }

        return "login";
    }

    @RequestMapping("/about")
    public String about(){
        return "about";
    }
}
