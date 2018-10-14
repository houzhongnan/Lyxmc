package com.lyxm.lychengdu.service;

import com.lyxm.lychengdu.dao.HotDao;
import com.lyxm.lychengdu.model.Hot;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class HotService {
    @Resource
    private HotDao hotDao;

    public List<Hot> getHots() {
        return hotDao.getHots();
    }
}
