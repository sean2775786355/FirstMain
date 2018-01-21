package com.safewind.sean.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping("/lab")
public class LabController {
    @RequestMapping(value = "/dataTable",method = RequestMethod.GET)
    public String dataTable()
    {
        return "/lab/dataTable";
    }

    @RequestMapping(value = "/uploadfile")
    public String uploadfile()
    {
           return "/lab/uploadfile";
    }
    @RequestMapping(value = "/uploadfile/1",method = RequestMethod.POST)
    public String uploadfile1(MultipartFile file, HttpServletRequest httpServletRequest)
    {
        if(!file.isEmpty())
        {
            String filename=file.getOriginalFilename();
            System.out.println("=====文件名======"+filename);
            File newfile= new File(httpServletRequest.getServletContext().getRealPath("/uploadFile"),filename);
            System.out.println("=======保存文件路径======"+newfile.getAbsolutePath());
            try{
                file.transferTo(newfile);
            }catch (IOException e)
            {
                e.printStackTrace();
            }
        }
        return "/lab/uploadfile";
    }

    @RequestMapping(value = "/el",method = RequestMethod.GET)
    public String el()
    {
        return "/lab/el";
    }


}
