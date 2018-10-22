package com.lyxm.lychengdu.service;

import com.lyxm.lychengdu.dao.TrafficDao;

import com.lyxm.lychengdu.model.Traffic;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class TrafficService {
    @Resource
    private TrafficDao trafficDao;

    public List<Traffic> getTraffics(){
        return trafficDao.getTraffics();
    }

}
