package com.safewind.sean.controller;

import com.safewind.sean.po.User;
import com.safewind.sean.service.UserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    UserService userService;
    @RequestMapping(value = "/verifyUser",method = RequestMethod.GET)
    public String verifyUser()
    {
        return "/user/verifyUser";
    }

    @RequestMapping(value = "/changePassword",method = RequestMethod.POST)
    public String changePassword(String username,String password)
    {
        if(userService.validatePassword(username,password))
        {
            return "/user/changePassword";
        }else {
            return "/user/verifyUser";
        }

    }
    @RequestMapping(value = "/DealchangePassword" ,method = RequestMethod.POST)
    public String DealchangePassword(String username,String password,String confirmPassword)
    {
        Subject subject=SecurityUtils.getSubject();
        System.out.println("==========用户名=================="+subject.getPrincipal().toString());
        if(password.equals(confirmPassword) && subject.getPrincipal().toString().equals(username))
        {
            System.out.println("username="+username+"password= "+password);
            User user = userService.findByUsername(username);
            System.out.println("useId="+user.getId());
            userService.changePassword(user.getId(),password);
            return "index";
        }
        else {
            return "/user/changePassword";
        }

    }


}
