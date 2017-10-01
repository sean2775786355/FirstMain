package com.safewind.sean.controller;

import com.safewind.sean.po.User;
import com.safewind.sean.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class CenterController {
    @Autowired
    UserService userService;
    @Autowired
    User user;
    @RequestMapping("login")
    public String login()
    {
        return "login";

    }
    @RequestMapping("index")
    public String Index()
    {
        return "index";
    }

    @RequestMapping("main")
    public String Main()
    {
        return "main";
    }


}
