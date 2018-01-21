package com.safewind.sean.mapper;

import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface SearchDao {
    //根据关键字搜索出list结果
    public List<String> SearchContents(String keyWord);
}
