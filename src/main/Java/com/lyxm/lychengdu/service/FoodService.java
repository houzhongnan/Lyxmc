package com.lyxm.lychengdu.service;

import com.lyxm.lychengdu.dao.FoodDao;
import com.lyxm.lychengdu.model.Food;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class FoodService {
    @Resource
    private FoodDao foodDao;

    public List<Food> getFoods() {
        return foodDao.getFoods();
    }
}
