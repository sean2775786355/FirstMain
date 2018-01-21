package com.safewind.sean.SearchTest;

import com.safewind.sean.mapper.SearchDao;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:spring-config.xml") // 加载配置
public class SearchTest {

    @Autowired
    private SearchDao searchDao;
    /**
     * Search功能的测试
     */
    @Test
    public void Test1()
    {
//
//        System.out.println("================="+searchDao.SearchContents("a"));
    }

}
