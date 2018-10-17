package com.lyxm.lychengdu.service;

import com.lyxm.lychengdu.dao.TestDao;
import com.lyxm.lychengdu.model.Test;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TestService {
    @Resource
    private TestDao testDao;

    public List<Test> getTests() {
        return testDao.getTests();
    }

}
