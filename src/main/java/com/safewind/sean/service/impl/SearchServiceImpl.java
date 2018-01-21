package com.safewind.sean.service.impl;

import com.safewind.sean.mapper.SearchDao;
import com.safewind.sean.service.SearchService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

 @Service
public class SearchServiceImpl implements SearchService {
    @Autowired
    private SearchDao searchDao;
    @Override
    public List<String> getSearchContents(String keyWord) {
        return searchDao.SearchContents(keyWord);
    }
}
