package com.lyxm.lychengdu.service;

import com.lyxm.lychengdu.dao.StrategyDao;
import com.lyxm.lychengdu.model.Strategy;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StrategyService {
    @Resource
    private StrategyDao strategyDao;

    public List<Strategy> getStrategys() {
        return strategyDao.getStrategys();
    }

}
