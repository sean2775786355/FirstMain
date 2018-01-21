package com.safewind.sean.controller;

import com.safewind.sean.po.User;
import com.safewind.sean.service.UserService;
import com.safewind.sean.util.ValidateCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;

@Controller

public class CenterController {
    @Autowired
    UserService userService;
    @Autowired
    User user;
    @RequestMapping("/login")
    public String login()
    {
        return "login";

    }

    /**
     * 生成验证码
     * @param request
     * @param response
     * @throws Exception
     */
    @RequestMapping(value = "/validateCode/imageProduce")
    public void validateCode(HttpServletRequest request, HttpServletResponse response) throws Exception {
        response.setHeader("Cache-Control", "no-cache");
        String verifyCode = ValidateCode.generateTextCode(ValidateCode.TYPE_ALL_MIXED, 4, null);
        request.getSession().setAttribute("validateCode", verifyCode);
        response.setContentType("image/jpeg");
        BufferedImage bim = ValidateCode.generateImageCode(verifyCode, 90, 30, 3, true, Color.WHITE, Color.BLACK, null);
        ImageIO.write(bim, "JPEG", response.getOutputStream());
    }
    @RequestMapping("/index")
    public String Index()
    {
        return "index";
    }

    @RequestMapping("/main")
    public String Main()
    {
        return "main";
    }

    @RequestMapping("/home")
    public String Home()
    {
        return "home";
    }


    @RequestMapping("/search")
    public String Search()
    {

        return "/lab/search";
    }



}
