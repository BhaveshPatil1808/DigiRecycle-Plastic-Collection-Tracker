package com.digirecycle.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    // Admin login page
    @RequestMapping("/adminlogin")
    public String showAdminLoginPage() {
        return "adminlogin"; // refers to adminlogin.jsp
    }

    // Register as User
    @RequestMapping("/registeruser")
    public String showUserRegisterPage() {
        return "registeruser"; // refers to registeruser.jsp
    }

    // Login as User
    @RequestMapping("/userlogin")
    public String showUserLoginPage() {
        return "userlogin"; // refers to userlogin.jsp
    }

    // Login as Recycler
    @RequestMapping("/recyclerlogin")
    public String showRecyclerLoginPage() {
        return "recyclerlogin"; // refers to recyclerlogin.jsp
    }
}
