package com.safewind.sean.controller;

import com.safewind.sean.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;
@Controller
@RequestMapping("/search")
public class SearchController {
    @Autowired
    private SearchService searchService;
    @ResponseBody
    @RequestMapping(value = "/MoreContent" ,method = RequestMethod.POST)
    public List<String> getMoreContent(String searchWord)
    {
        System.out.println("======searchWord===="+searchWord);
        return searchService.getSearchContents(searchWord);
    }

}
