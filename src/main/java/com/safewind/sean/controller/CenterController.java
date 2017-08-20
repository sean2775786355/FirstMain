package com.safewind.sean.controller;

import com.safewind.sean.po.User;
import com.safewind.sean.service.UserService;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.jws.soap.SOAPBinding;

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

    @RequestMapping("/user/verifyUser")
    public String verifyUser()
    {
        return "/user/verifyUser";
    }

    @RequestMapping(value = "/user/changePassword",method = RequestMethod.POST)
    public String changePassword(String username,String password)
    {

        User user=userService.findByUsername(username);
        //用户输入的更原密码，加密转换   需要与加密是一样 才能得到相同的加密密码
        String Password = new SimpleHash("md5", password,
                ByteSource.Util.bytes(username+user.getSalt()),
                2).toHex();

        //数据库中用户的密码（经过加密的）
        System.out.println("Password==="+user.getPassword());
        //用户输入密码 经过加密后的值
        System.out.println("password==="+Password);
        if(Password.equals(user.getPassword()))
        {
            return "/user/changePassword";
        }else {
            return "/user/verifyUser";
        }

    }

    @RequestMapping(value = "/user/DealchangePassword" ,method = RequestMethod.POST)
    public String DealchangePassword(String username,String newpassword)
    {
        System.out.println("username="+username+"password= "+newpassword);
        User user = userService.findByUsername(username);
        System.out.println("useId="+user.getId());
        userService.changePassword(user.getId(),newpassword);
        return "index";
    }


}
